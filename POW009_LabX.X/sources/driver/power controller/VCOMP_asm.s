; **********************************************************************************
;  SDK Version: PowerSmart Digital Control Library Designer v1.9.15.709
;  CGS Version: Code Generator Script v3.0.11 (01/06/2022)
;  Author:      edwardlee
;  Date/Time:   11/04/2022 21:16:21
; **********************************************************************************
;  3P3Z Control Library File (Fast Floating Point Coefficient Scaling Mode)
; **********************************************************************************
    
;------------------------------------------------------------------------------
;file start
    .nolist                                 ; (no external dependencies)
    .list                                   ; list of all external dependencies
    
;------------------------------------------------------------------------------
;local inclusions.
    .section .data                          ; place constant data in the data section
    
;------------------------------------------------------------------------------
;include NPNZ16b_s data structure and global constants.
    .include "npnz16b.inc"                  ; include NPNZ16b_s object data structure value offsets and status flag labels
    
;------------------------------------------------------------------------------
;source code section.
    .section .text                          ; place code in the text section
    
;------------------------------------------------------------------------------
; Global function declaration
; This function calls the z-domain controller processing the latest data point input
;------------------------------------------------------------------------------

    .global _VCOMP_Update                   ; provide global scope to routine
    _VCOMP_Update:                          ; local function label
    
;------------------------------------------------------------------------------
; Save working registers
    push.s                                  ; save shadowed working registers (WREG0, WREG1, WREG2, WREG3)
    
;------------------------------------------------------------------------------
; Check status word for Enable/Disable flag and bypass computation, if disabled
    btss [w0], #NPNZ16_STATUS_ENABLED       ; check ENABLED bit state, skip (do not execute) next instruction if set
    bra VCOMP_LOOP_BYPASS                   ; if ENABLED bit is cleared, jump to end of control code
    
;------------------------------------------------------------------------------
; Save working registers
    push w4                                 ; save working registers used for MAC operations (w4, w5, w6, w8, w10)
    push w5
    push w6
    push w8
    push w10
    push ACCAL                              ; save accumulator A register (LOW WORD:   bit <15…0>)
    push ACCAH                              ; save accumulator A register (HIGH WORD:  bit <31…16>)
    push ACCAU                              ; save accumulator A register (UPPER BYTE: bit <39…32>)
    push ACCBL                              ; save accumulator B register (LOW WORD:   bit <15…0>)
    push ACCBH                              ; save accumulator B register (HIGH WORD:  bit <31…16>)
    push ACCBU                              ; save accumulator B register (UPPER BYTE: bit <39…32>)
    push CORCON                             ; save CPU configuration register
    push SR                                 ; save CPU status register
    
;------------------------------------------------------------------------------
; Configure DSP for fractional operation with normal saturation (Q1.31 format)
    mov #0x00C0, w4                         ; load default value of DSP core configuration enabling accumulator saturation and signed fractional multiply
    mov w4, _CORCON                         ; load default configuration into CORCON register
    
;------------------------------------------------------------------------------
; Setup pointer to first element of error history array
    mov [w0 + #ptrErrorHistory], w10        ; load pointer address into working register
    
;------------------------------------------------------------------------------
; Update error history (move error one tick down the delay line)
    mov [w10 + #4], w6                      ; move entry (n-3) into buffer
    mov w6, [w10 + #6]                      ; move buffered value one tick down the delay line
    mov [w10 + #2], w6                      ; move entry (n-2) into buffer
    mov w6, [w10 + #4]                      ; move buffered value one tick down the delay line
    mov [w10 + #0], w6                      ; move entry (n-1) into buffer
    mov w6, [w10 + #2]                      ; move buffered value one tick down the delay line
    
;------------------------------------------------------------------------------
; Read data from input source
    mov [w0 + #ptrSourceRegister], w2       ; load pointer to input source register
    mov [w2], w1                            ; move value from input source into working register
    
;------------------------------------------------------------------------------
; Load reference and calculate error input to transfer function
    mov [w0 + #ptrControlReference], w2     ; move pointer to control reference into working register
    subr w1, [w2], w1                       ; calculate error (=reference - input)
    mov [w0 + #normPreShift], w2            ; move error input scaler into working register
    sl w1, w2, w1                           ; normalize error result to fractional number format
    
;------------------------------------------------------------------------------
; Setup pointers to B-Term data arrays
    mov [w0 + #ptrBCoefficients], w8        ; load pointer to first index of B coefficients array
    mov w1, [w10]                           ; add most recent error input to history array
    
;------------------------------------------------------------------------------
; Compute compensation filter B-term
    clr b, [w8]+=2, w5                      ; clear accumulator B and prefetch first error operand
    clr a, [w8]+=4, w4, [w10]+=2, w6        ; clear accumulator A and prefetch first coefficient operand including number scaler
    mpy w4*w6, a, [w8]+=4, w4, [w10]+=2, w6 ; multiply first control output of the delay line with first coefficient
    sftac a, w5                             ; shift accumulator to post-scale floating number
    add b                                   ; add accumulator a to accumulator b
    mov [w8 - #6], w5                       ; load scaler into working register
    mpy w4*w6, a, [w8]+=4, w4, [w10]+=2, w6 ; multiply control output (n-1) from the delay line with coefficient B1
    sftac a, w5                             ; shift accumulator to post-scale floating number
    add b                                   ; add accumulator a to accumulator b
    mov [w8 - #6], w5                       ; load scaler into working register
    mpy w4*w6, a, [w8]+=4, w4, [w10]+=2, w6 ; multiply control output (n-2) from the delay line with coefficient B2
    sftac a, w5                             ; shift accumulator to post-scale floating number
    add b                                   ; add accumulator a to accumulator b
    mov [w8 - #6], w5                       ; load scaler into working register
    mpy w4*w6, a                            ; multiply & accumulate last control output with coefficient of the delay line (no more prefetch)
    sftac a, w5                             ; shift accumulator to post-scale floating number
    add b                                   ; add accumulator a to accumulator b
    
;------------------------------------------------------------------------------
; Setup pointers to A-Term data arrays
    mov [w0 + #ptrACoefficients], w8        ; load pointer to first index of A coefficients array
    
;------------------------------------------------------------------------------
; Load pointer to first element of control history array
    mov [w0 + #ptrControlHistory], w10      ; load pointer address into working register
    
;------------------------------------------------------------------------------
; Compute compensation filter A-term
    movsac b, [w8]+=2, w5                   ; leave contents of accumulator B unchanged
    clr a, [w8]+=4, w4, [w10]+=2, w6        ; clear accumulator A and prefetch first coefficient operand including number scaler
    mpy w4*w6, a, [w8]+=4, w4, [w10]+=2, w6 ; multiply first control output of the delay line with first coefficient
    sftac a, w5                             ; shift accumulator to post-scale floating number
    add b                                   ; add accumulator a to accumulator b
    mov [w8 - #6], w5                       ; load scaler into working register
    mpy w4*w6, a, [w8]+=4, w4, [w10]+=2, w6 ; multiply control output (n-2) from the delay line with coefficient A2
    sftac a, w5                             ; shift accumulator to post-scale floating number
    add b                                   ; add accumulator a to accumulator b
    mov [w8 - #6], w5                       ; load scaler into working register
    mpy w4*w6, a                            ; multiply & accumulate last control output with coefficient of the delay line (no more prefetch)
    sftac a, w5                             ; shift accumulator to post-scale floating number
    add b                                   ; add accumulator a to accumulator b
    sac.r b, w4                             ; store most recent accumulator result in working register
    
;------------------------------------------------------------------------------
; Controller Anti-Windup (control output value clamping)
     
; Check for lower limit violation
    mov [w0 + #MinOutput], w6               ; load lower limit value
    cpsgt w4, w6                            ; compare values and skip next instruction if control output is within operating range (control output > lower limit)
    mov w6, w4                              ; override most recent controller output
    VCOMP_CLAMP_MIN_EXIT:
     
; Check for upper limit violation
    mov [w0 + #MaxOutput], w6               ; load upper limit value
    cpslt w4, w6                            ; compare values and skip next instruction if control output is within operating range (control output < upper limit)
    mov w6, w4                              ; override most recent controller output
    VCOMP_CLAMP_MAX_EXIT:
    
;------------------------------------------------------------------------------
; Write control output value to target
    mov [w0 + #ptrTargetRegister], w8       ; capture pointer to target in working register
    mov w4, [w8]                            ; move control output to target address
    
;------------------------------------------------------------------------------
; Load pointer to first element of control history array
    mov [w0 + #ptrControlHistory], w10      ; load pointer address into working register
    
;------------------------------------------------------------------------------
; Update control output history (move entries one tick down the delay line)
    mov [w10 + #2], w6                      ; move entry (n-2) one tick down the delay line
    mov w6, [w10 + #4]
    mov [w10 + #0], w6                      ; move entry (n-1) one tick down the delay line
    mov w6, [w10 + #2]
    mov w4, [w10]                           ; add most recent control output to history
    
;------------------------------------------------------------------------------
; Restore working registers in reverse order
    pop SR                                  ; restore CPU status registers
    pop CORCON                              ; restore CPU configuration registers
    pop ACCBU                               ; restore accumulator B register (UPPER BYTE: bit <39…32>)
    pop ACCBH                               ; restore accumulator B register (HIGH WORD:  bit <31…16>)
    pop ACCBL                               ; restore accumulator B register (LOW WORD:   bit <15…0>)
    pop ACCAU                               ; restore accumulator A register (UPPER BYTE: bit <39…32>)
    pop ACCAH                               ; restore accumulator A register (HIGH WORD:  bit <31…16>)
    pop ACCAL                               ; restore accumulator A register (LOW WORD:   bit <15…0>)
    pop w10                                 ; restore working registers used for MAC operations (w4, w5, w6, w8, w10)
    pop w8
    pop w6
    pop w5
    pop w4
    
;------------------------------------------------------------------------------
; Enable/Disable bypass branch target with dummy read of source buffer
    goto VCOMP_LOOP_EXIT                    ; when enabled, step over dummy read and go straight to EXIT
    VCOMP_LOOP_BYPASS:                      ; Enable/Disable bypass branch target to perform dummy read of source to clear the source buffer
    mov [w0 + #ptrSourceRegister], w2       ; load pointer to input source register
    mov [w2], w1                            ; move value from input source into working register
    VCOMP_LOOP_EXIT:                        ; Exit control loop branch target
    
;------------------------------------------------------------------------------
; Restore working registers in reverse order
    pop.s                                   ; restore shadowed working registers (WREG0, WREG1, WREG2, WREG3)
    
;------------------------------------------------------------------------------
; End of routine
    return                                  ; end of function; return to caller
    
;------------------------------------------------------------------------------

    
;------------------------------------------------------------------------------
; Global function declaration VCOMP_Reset
; This function clears control and error histories enforcing a reset
;------------------------------------------------------------------------------

    .global _VCOMP_Reset                    ; provide global scope to routine
    _VCOMP_Reset:                           ; local function label
    
;------------------------------------------------------------------------------
; Clear control history array
    push w0                                 ; save contents of working register WREG0
    mov [w0 + #ptrControlHistory], w0       ; set pointer to the base address of control history array
    clr [w0++]                              ; clear next address of control history array
    clr [w0++]                              ; clear next address of control history array
    clr [w0]                                ; clear last address of control history array
    pop w0                                  ; restore contents of working register WREG0
    
;------------------------------------------------------------------------------
; Clear error history array
    push w0                                 ; save contents of working register WREG0
    mov [w0 + #ptrErrorHistory], w0         ; set pointer to the base address of error history array
    clr [w0++]                              ; Clear next address of error history array
    clr [w0++]                              ; Clear next address of error history array
    clr [w0++]                              ; Clear next address of error history array
    clr [w0]                                ; clear last address of error history array
    pop w0                                  ; restore contents of working register WREG0
    
;------------------------------------------------------------------------------
; End of routine
    return                                  ; end of function; return to caller
    
;------------------------------------------------------------------------------

    
;------------------------------------------------------------------------------
; Global function declaration VCOMP_Precharge
; This function loads user-defined default values into control and error histories
;------------------------------------------------------------------------------

    .global _VCOMP_Precharge                ; provide global scope to routine
    _VCOMP_Precharge:                       ; local function label
    
;------------------------------------------------------------------------------
; Charge error history array with defined value
    push w0                                 ; save contents of working register WREG0
    push w1                                 ; save contents of working register WREG1
    mov  [w0 + #ptrErrorHistory], w0        ; set pointer to the base address of error history array
    mov w1, [w0++]                          ; Load user value into next address of error history array
    mov w1, [w0++]                          ; Load user value into next address of error history array
    mov w1, [w0++]                          ; Load user value into next address of error history array
    mov w1, [w0]                            ; load user value into last address of error history array
    pop w1                                  ; restore contents of working register WREG1
    pop w0                                  ; restore contents of working register WREG0
    
;------------------------------------------------------------------------------
; Charge control history array with defined value
    push w0                                 ; save contents of working register WREG0
    push w2                                 ; save contents of working register WREG2
    mov  [w0 + #ptrControlHistory], w0      ; set pointer to the base address of control history array
    mov w2, [w0++]                          ; Load user value into next address of control history array
    mov w2, [w0++]                          ; Load user value into next address of control history array
    mov w2, [w0]                            ; Load user value into last address of control history array
    pop w2                                  ; restore contents of working register WREG2
    pop w0                                  ; restore contents of working register WREG0
    
;------------------------------------------------------------------------------
; End of routine
    return                                  ; end of function; return to caller
    
;------------------------------------------------------------------------------

    
;------------------------------------------------------------------------------
; Global function declaration VCOMP_PTermUpdate
; This function executes a P-Term based control loop used for plant measurements only.
; THIS LOOP IS NOT SUITED FOR STABLE OPERATION
;------------------------------------------------------------------------------

    .global _VCOMP_PTermUpdate              ; provide global scope to routine
    _VCOMP_PTermUpdate:                     ; local function label
    
;------------------------------------------------------------------------------
; Save working registers
    push.s                                  ; save shadowed working registers (WREG0, WREG1, WREG2, WREG3)
    
;------------------------------------------------------------------------------
; Check status word for Enable/Disable flag and bypass computation when disabled
    btss [w0], #NPNZ16_STATUS_ENABLED       ; check ENABLED bit state, skip (do not execute) next instruction if set
    bra VCOMP_PTERM_LOOP_BYPASS             ; if ENABLED bit is cleared, jump to end of control code
    
;------------------------------------------------------------------------------
; Save working registers
    push w4                                 ; save MAC operation working register WREG4
    push w6                                 ; save MAC operation working register WREG6
    push w8                                 ; save MAC operation working register WREG8
    push w10                                ; save MAC operation working register WREG10
    push ACCAL                              ; save accumulator A register (LOW WORD:   bit <15…0>)
    push ACCAH                              ; save accumulator A register (HIGH WORD:  bit <31…16>)
    push ACCAU                              ; save accumulator A register (UPPER BYTE: bit <39…32>)
    push ACCBL                              ; save accumulator B register (LOW WORD:   bit <15…0>)
    push ACCBH                              ; save accumulator B register (HIGH WORD:  bit <31…16>)
    push ACCBU                              ; save accumulator B register (UPPER BYTE: bit <39…32>)
    push CORCON                             ; save CPU configuration register
    push SR                                 ; save CPU status register
    
;------------------------------------------------------------------------------
; Configure DSP for fractional operation with normal saturation (Q1.31 format)
    mov #0x00C0, w4                         ; load default value of DSP core configuration enabling accumulator saturation and signed fractional multiply
    mov w4, _CORCON                         ; load default configuration into CORCON register
    
;------------------------------------------------------------------------------
; Read data from input source
    mov [w0 + #ptrSourceRegister], w2       ; load pointer to input source register
    mov [w2], w1                            ; move value from input source into working register
    
;------------------------------------------------------------------------------
; Load reference and calculate error input to transfer function
    mov [w0 + #ptrControlReference], w2     ; move pointer to control reference into working register
    subr w1, [w2], w1                       ; calculate error (=reference - input)
    mov [w0 + #normPreShift], w2            ; move error input scaler into working register
    sl w1, w2, w1                           ; normalize error result to fractional number format
    
;------------------------------------------------------------------------------
; Load P-gain factor from data structure
    mov [w0 + #PTermFactor], w6             ; move P-coefficient fractional into working register
    mov [w0 + #PTermScaler], w2             ; move P-coefficient scaler into working register
    mov w1, w4                              ; move error to MPY working register
    ; calculate P-control result
    mpy w4*w6, a                            ; multiply most recent error with P-coefficient
    sftac a, w2                             ; shift accumulator to post-scale floating number
    sac.r a, w4                             ; store accumulator result to working register
    
;------------------------------------------------------------------------------
; Controller Anti-Windup (control output value clamping)
     
; Check for lower limit violation
    mov [w0 + #MinOutput], w6               ; load lower limit value
    cpsgt w4, w6                            ; compare values and skip next instruction if control output is within operating range (control output > lower limit)
    mov w6, w4                              ; override most recent controller output
    VCOMP_PTERM_CLAMP_MIN_EXIT:
     
; Check for upper limit violation
    mov [w0 + #MaxOutput], w6               ; load upper limit value
    cpslt w4, w6                            ; compare values and skip next instruction if control output is within operating range (control output < upper limit)
    mov w6, w4                              ; override most recent controller output
    VCOMP_PTERM_CLAMP_MAX_EXIT:
    
;------------------------------------------------------------------------------
; Write control output value to target
    mov [w0 + #ptrTargetRegister], w8       ; capture pointer to target in working register
    mov w4, [w8]                            ; move control output to target address
    
;------------------------------------------------------------------------------
; Restore working registers in reverse order
    pop SR                                  ; restore CPU status registers
    pop CORCON                              ; restore CPU configuration registers
    pop ACCBU                               ; restore accumulator B register (UPPER BYTE: bit <39…32>)
    pop ACCBH                               ; restore accumulator B register (HIGH WORD:  bit <31…16>)
    pop ACCBL                               ; restore accumulator B register (LOW WORD:   bit <15…0>)
    pop ACCAU                               ; restore accumulator A register (UPPER BYTE: bit <39…32>)
    pop ACCAH                               ; restore accumulator A register (HIGH WORD:  bit <31…16>)
    pop ACCAL                               ; restore accumulator A register (LOW WORD:   bit <15…0>)
    pop w10                                 ; restore MAC operation working register WREG10
    pop w8                                  ; restore MAC operation working register WREG8
    pop w6                                  ; restore MAC operation working register WREG6
    pop w4                                  ; restore MAC operation working register WREG4
    
;------------------------------------------------------------------------------
; Enable/Disable bypass branch target with dummy read of source buffer
    goto VCOMP_PTERM_LOOP_EXIT              ; when enabled, step over dummy read and go straight to EXIT
    VCOMP_PTERM_LOOP_BYPASS:                ; Enable/Disable bypass branch target to perform dummy read of source to clear the source buffer
    mov [w0 + #ptrSourceRegister], w2       ; load pointer to input source register
    mov [w2], w1                            ; move value from input source into working register
    VCOMP_PTERM_LOOP_EXIT:                  ; Exit P-Term control loop branch target
    
;------------------------------------------------------------------------------
; Restore working registers in reverse order
    pop.s                                   ; restore shadowed working registers (WREG0, WREG1, WREG2, WREG3)
    
;------------------------------------------------------------------------------
; End of routine
    return                                  ; end of function; return to caller
    
;------------------------------------------------------------------------------

    
;------------------------------------------------------------------------------
; End of file
    .end                                    ; end of file VCOMP_asm.s
    
;------------------------------------------------------------------------------

     
; **********************************************************************************
;  Download latest version of this tool here: 
;//      https://www.microchip.com/powersmart
; **********************************************************************************
