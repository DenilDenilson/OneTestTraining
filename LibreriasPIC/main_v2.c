#include "configDevice.h"
#include "lcd_2x16.h"

// In botons 0 == push
#define BTN0            PORTBbits.RB0
#define BTN1            PORTBbits.RB1
#define BTN2            PORTBbits.RB2
#define BTN3            PORTBbits.RB3

#define TEST_INIT       1
#define TEST_BUTTONS    2
#define TEST_LEDS       3
#define TEST_RELAYS     4
#define TEST_BUZZER     5
#define TEST_USART      6
#define TEST_COMPLETE   7

// Prototipamos funciones
void OSCILADOR_Init(void); // Prototipamos reloj a trabajar la micro
void Port_Init(void); // Prototipamos los pines a utilizar
void Message_Lcd_ok(void); // Messate to question is all ok in the test

// Variables
uint8_t ESTADO_APP;
bool btn0_pushed = false;
bool btn1_pushed = false;
bool btn2_pushed = false;
bool btn3_pushed = false;
bool two_buttons_pushed = false;

char strButtons[20];

int main(void) {
    
    OSCILADOR_Init(); // Inicializamos el reloj interno
    Port_Init(); // Inicializamos los puertos
    Lcd_Init(); // Inicializamos el led
    Lcd_Clear();

    
    ESTADO_APP = TEST_INIT;
    
    while (1) {
        /* TRABAJAREMOS CON ESTADOS */
        switch(ESTADO_APP) {
            case TEST_INIT:
                // Inicializando el testeo
                Lcd_Clear();
                Lcd_Set_Cursor(1, 1);
                Lcd_Write_String("starting test");
                Lcd_Set_Cursor(2, 1);
                Lcd_Write_String("of trainer");
                __delay_ms(1500);
                Lcd_Clear();
                Lcd_Set_Cursor(1, 1);
                Lcd_Write_String("In ...");
                // Lcd_Set_Cursor(2, 1);
                
                for ( int i = 3; i > 0; i-- ) {
                    char strI[20];
                    for ( int j = 1; j < 17; j++ ) {
                        Lcd_Set_Cursor(1, 1);
                        Lcd_Write_String("In ...");
                        Lcd_Set_Cursor(2, j);
                        sprintf(strI, "%d", i);
                        Lcd_Write_String(strI);
                        __delay_ms(200);
                        Lcd_Clear();
                    }
                }
                
                ESTADO_APP = TEST_BUTTONS;
                
                // Testeando los botones
                Lcd_Clear();
                Lcd_Set_Cursor(1, 1);
                Lcd_Write_String("Buttons test");
                Lcd_Set_Cursor(2, 1);
                Lcd_Write_String("Push any button");
                __delay_ms(1500);
                
                break;
                
            case TEST_BUTTONS:
                
                if ( BTN0 == 0 ) {
                    __delay_ms(10);
                    while( BTN0 == 0 );
                    btn0_pushed = true;
                }
                
                if ( BTN1 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    btn1_pushed = true;
                }
                
                if ( BTN2 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    btn2_pushed = true;
                }
                
                if ( BTN3 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    btn3_pushed = true;
                }
                
                sprintf(strButtons, "%d, %d, %d, %d", btn0_pushed, btn1_pushed, btn2_pushed, btn3_pushed);
                Lcd_Clear();
                Lcd_Set_Cursor(2, 1);
                Lcd_Write_String(strButtons);
                
                if ( btn0_pushed && btn1_pushed && btn2_pushed && btn3_pushed ) {
                    __delay_ms(500);
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("All buttons ok");
                    __delay_ms(500);
                    
                    ESTADO_APP = TEST_LEDS;
                    // Testeando leds
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("Probando leds...");
                    Message_Lcd_ok();
                }
                
                break;
                
            case TEST_LEDS:
                
                LATD = 0xff;
                __delay_ms(2000);
                
                while ( BTN1 != 0 || BTN2 != 0 ) {
                    // Encendiendo leds
                    for (int i = 0; i <= 7; i++) {
                        LATD = ( 1 << i ); // Enciende LED i
                        __delay_ms(250);
                    }

                    // Apagando leds
                    for (int i = 0; i <= 7; i++) {
                        LATD = ( 0 << i ); // Apaga LED i
                        __delay_ms(250);
                    }
                    // (1<<i)) mueve 1 i veces a la izquiera en 0b0000000 siendo
                    // 0b0000001 para i = 1 y 0b00000010 para i = 2
                    __delay_ms(100);
                }
                
                if ( BTN1 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("Leds correctos");
                    Lcd_Set_Cursor(2, 1);
                    Lcd_Write_String("Init test Relays");
                    __delay_ms(1000);
                    ESTADO_APP = TEST_RELAYS;
                }
                
                if ( BTN2 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("Leds incorrectos");
                    Lcd_Set_Cursor(2, 1);
                    Lcd_Write_String("Init test Relays");
                    __delay_ms(1000);
                    ESTADO_APP = TEST_RELAYS;
                }
                break;
            
            case TEST_RELAYS:
                // Testeando relays
                Lcd_Clear();
                Lcd_Set_Cursor(1, 1);
                Lcd_Write_String("Relays func?...");
                //Message_Lcd_Ok();
                
                if ( BTN0 == 0 ) {
                    __delay_ms(10);
                    while( BTN0 == 0 );
                    LATEbits.LE0 = ~LATEbits.LE0;
                    LATBbits.LB4 = ~LATBbits.LB4;
                }
                
                if ( BTN1 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("Relays bien!");
                    Lcd_Set_Cursor(2, 1);
                    Lcd_Write_String("Init test Buzzer");
                    __delay_ms(1000);
                    ESTADO_APP = TEST_BUZZER;
                }
                
                if ( BTN2 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("Relays mal!");
                    Lcd_Set_Cursor(2, 1);
                    Lcd_Write_String("Init test Buzzer");
                    __delay_ms(1000);
                    ESTADO_APP = TEST_BUZZER;
                }                
                break;
                
            case TEST_BUZZER:
                // Testeando buzzer
                Lcd_Clear();
                Lcd_Set_Cursor(1, 1);
                Lcd_Write_String("Relays func?...");
                //Message_Lcd_Ok();
                
                if ( BTN0 == 0 ) {
                    __delay_ms(10);
                    while( BTN0 == 0 );
                    LATEbits.LATE2 = ~LATEbits.LATE2;
                }
                
                if ( BTN1 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("Buzzer bien!");
                    Lcd_Set_Cursor(2, 1);
                    Lcd_Write_String("Init test Buzzer");
                    __delay_ms(1000);
                    ESTADO_APP = TEST_COMPLETE;
                }
                
                if ( BTN2 == 0 ) {
                    __delay_ms(10);
                    while( BTN1 == 0 );
                    Lcd_Clear();
                    Lcd_Set_Cursor(1, 1);
                    Lcd_Write_String("Buzzer mal!");
                    Lcd_Set_Cursor(2, 1);
                    Lcd_Write_String("Init test Buzzer");
                    __delay_ms(1000);
                    ESTADO_APP = TEST_COMPLETE;
                }              
                break;
                
                
                
                
                
            case TEST_COMPLETE:
                // Testeo completo
                Lcd_Clear();
                Lcd_Set_Cursor(1, 1);
                Lcd_Write_String("Felicidades");
                Lcd_Set_Cursor(2, 1);
                Lcd_Write_String("Test completado");
                
                
                break;
                
        }    
    }
}


void Message_Lcd_ok(void) {
    Lcd_Set_Cursor(2, 1);
    Lcd_Write_String("ok  BTN1 : BTN2");
}


void Port_Init(void) {
    // PORT D
    // ( Asociado al LCD display y leds )
    ANSELD = 0x00; // Puerto D como digital
    //TRISD = 0x00; // Puerdo D como salida aunque ya lo configura la librería
    
    // PORT B
    // ( Asociado a los tres botones )
    ANSELBbits.ANSB0 = 0; // Pines digitales
    ANSELBbits.ANSB1 = 0;
    ANSELBbits.ANSB2 = 0;
    ANSELBbits.ANSB3 = 0;
    
    TRISBbits.RB0 = 1; // Entrada digital
    TRISBbits.RB1 = 1;
    TRISBbits.RB2 = 1;
    TRISBbits.RB3 = 1;
    
    ANSELBbits.ANSB4 = 0;
    TRISBbits.RB4 = 0;
    
    // Config PUERTO E
    // ( Asociado a los relays, hay un puerto B de relays RB4 )
    ANSELEbits.ANSE2 = 0; // Pin Digital
    TRISEbits.RE2 = 0; // Salida Digital
    ANSELEbits.ANSE0 = 0;
    TRISEbits.RE0 = 0;
    
    LATEbits.LE0 = 0; // Inicializamos en 0
    LATBbits.LB4 = 0;
}
