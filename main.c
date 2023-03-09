#include "LibreriasPIC/configDevice.h"
#include "LibreriasPIC/lcd_2x16.h"
#include "LibreriasPIC/adc_10bits.h"
#include "LibreriasPIC/usart.h"



void Oscilador_Init(void);
void Port_Init(void);

float temp1;
char strTemp1[20];
uint8_t ESTADO_APP;

int main(void) {
    
    OSCILADOR_Init();
    Port_Init();
    ADC_Init();
    
    USART_SerialBegin(115200);
    USART_TxEnable();
    USART_RxEnable();
    
    Lcd_Init();
    Lcd_Clear();
    
    /* L C D */
    Lcd_Set_Cursor(1, 1);
    Lcd_Write_String("Temperatura: ");
    
    LATEbits.LATE2 = 0;
    
    ESTADO_APP = 
    
    while (1) {
        /* TRABAJAREMOS CON MANEJO DEL ESTADO */
        switch(ESTADO_APP) {
            
        }
        
        /* A D C */
        temp1 = ((((float)ADC_GetConvesion(ADC_AN0))*(ADC_VREF/ADC_RESOLUCION))-0.5)/0.01;
        sprintf(strTemp1, "Temp: %.2f", temp1);
        
        Lcd_Set_Cursor(2, 1);
        Lcd_Write_String(strTemp1);
        
        /* R E L A Y S */
        if (PORTBbits.RB0 == 0) {
            __delay_ms(10);
            while(PORTBbits.RB0 == 0);
            LATEbits.LE0 = ~LATEbits.LE0;
        }
        
        if (PORTBbits.RB1 == 0) {
            __delay_ms(10);
            while(PORTBbits.RB1 == 0); 
            LATBbits.LB4 = ~LATBbits.LB4;
        }
        
        /* B U Z Z E R */ // RE2
        if (PORTBbits.RB2 == 0) {
            __delay_ms(10);
            while(PORTBbits.RB2 == 0);
            LATEbits.LATE2 = ~LATEbits.LATE2;
        }
        
        
    }
}

void Port_Init(void) {
    //Config PUERTO D
    ANSELD = 0x00;
    
    //Config PUERTO A
    TRISAbits.RA0 = 1;
    ANSELAbits.ANSA0 = 1;
    
    //Config PUERTO B
    ANSELBbits.ANSB0 = 0; // Pin Digital
    TRISBbits.RB0 = 1; // Entrada Digital
    
    ANSELBbits.ANSB1 = 0;
    TRISBbits.RB1 = 1;
    
    ANSELBbits.ANSB2 = 0;
    TRISBbits.RB2 = 1;
    
    TRISBbits.RB4 = 0;
    ANSELBbits.ANSB4 = 0;
    
    //Config PUERTO E
    TRISEbits.RE0 = 0;
    ANSELEbits.ANSE0 = 0;
    ANSELEbits.ANSE2 = 0; // Pin Digital
    TRISEbits.RE2 = 0; // Salida Digital
    
    LATEbits.LE0 = 0;
    LATBbits.LB4 = 0;
}