#ifdef __SyncBuckControl
#define EXTERN  
#else
#define EXTERN extern
#endif

// Compensator Softstart
#define VCOMP_VREF          3787

// Compensator Clamp Limits
#define VCOMP_MIN_CLAMP     0x0010
#define VCOMP_MAX_CLAMP     0x3839

EXTERN uint16_t SyncBuck_Vref;
volatile uint16_t VCOMP_ControlObject_Initialize(void);
void SyncBuck_Softstart(void);

