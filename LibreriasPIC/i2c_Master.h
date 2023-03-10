
#ifndef I2C_MASTER_H
#define	I2C_MASTER_H

#ifndef _XTAL_FREQ
#define _XTAL_FREQ 8000000UL
#endif

#include <xc.h>
#include <stdint.h>
#include <pic18f45k50.h>

//I2C
#define F_SCL     100000UL //Velocidad: Modo Estandar

#define I2C_ACK    0
#define I2C_nACK   1
#define I2C_WRITE  0b00000000
#define I2C_READ   0b00000001

//Funciones I2C
void I2C_Init(void);
void I2C_Start(void);
void I2C_Restart(void);
void I2C_Write_Address_Slave(uint8_t address, uint8_t data_dir);
void I2C_Write_Data_Slave(uint8_t data);
void I2C_Stop(void);
void I2C_Read_Data(uint8_t *Ptr_Data, uint8_t var_Ack_nAck);

#endif	/* I2C_MASTER_H */

