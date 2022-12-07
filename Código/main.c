/*
 * Copyright (C) 2016 Bas Stottelaar <basstottelaar@gmail.com>
 *	AHORA ES NUESTRO ::: PROYECTO COMPOSTAJE
 * JULIAN ESCOBAR JAMIOY
 * 
 * This file is subject to the terms and conditions of the GNU Lesser
 * General Public License v2.1. See the file LICENSE in the top level
 * directory for more details.
 */

#ifndef INDEX_DRIVER_HW_I2C
#error "INDEX_DRIVER_HW_I2C not defined"
#endif

#ifndef TEST_ADDR
#error "TEST_ADDR not defined"
#endif

#ifndef SETUP_DISPLAY
#error "SETUP_DISPLAY not defined"
#endif

#ifndef TEST_PIN_RESET
#error "TEST_PIN_RESET not defined"
#endif

#include <stdio.h>


#include "periph/gpio.h"
#include "periph/i2c.h"

#include "timex.h"
#include "ztimer.h"

#include "u8g2.h"
#include "u8x8_riotos.h"

//PARA LAS TASK
#include "board.h"
#include "thread.h"
#include "periph_conf.h"

//PARA BOTON
#define touch_tapa GPIO18   //LEE EL TOUCH
#define salida_a_servo GPIO2 //POR DONDE ENVIO EL PWM DE EL SERVO QUE ABRE LA TAPA

//PARA LOS MOTORES
#define PIN1 GPIO12 
#define PIN2 GPIO13
#define PIN3 GPIO14
#define PIN4 GPIO15
#define ENA1 GPIO4
#define ENA2 GPIO5

#define PIN5 GPIO25
#define PIN6 GPIO26
#define PIN7 GPIO27
#define PIN8 GPIO32
#define ENA3 GPIO33
#define ENA4 GPIO34

//~ #define PIN1 GPIO15
//~ #define PIN2 GPIO0
//~ #define PIN3 GPIO4
//~ #define PIN4 GPIO16

int posicion_tapa=0;  //PARA SERVOMOTOR
int cuenta_atras=0;
int max_cuenta_atras=1800;
int minutos=0;
int segundos=0;
int pantalla=0;

//>>>>>>>>>DEFINO LA TAREA
char tarea_PWM_servo[THREAD_STACKSIZE_MAIN];
void *tarea_PWM_servo_thread(void *arg){ 	
	gpio_init(salida_a_servo, GPIO_OUT);
	
	while(1){
		if(posicion_tapa==0){
			gpio_set(salida_a_servo); //Enciende el PIN
			ztimer_sleep(ZTIMER_USEC,  1000U); //Tiempo que esta ON
			gpio_clear(salida_a_servo); //Apaga el PIN
			ztimer_sleep(ZTIMER_USEC, 19000U);	
			//DEBE SUMAR 20milisegundos, o 20mil microsegundos que es el periodo que recibe el servo 2000U
			
			
		}else{		
			gpio_set(salida_a_servo); //Enciende el PIN
			ztimer_sleep(ZTIMER_USEC,  2000U); //Tiempo que esta ON
			gpio_clear(salida_a_servo); //Apaga el PIN
			ztimer_sleep(ZTIMER_USEC, 18000U);		
			//DEBE SUMAR 20milisegundos, que es el periodo que recibe el servo 20.000 U
		}
	}
	return 0;
}


//>>>>>>>>>DEFINO LA TAREA 2
char tarea_flanco_subida_touch[THREAD_STACKSIZE_MAIN];
void *tarea_flanco_subida_touch_thread(void *arg){
	//DEFINIR SI ES UNA ENTRADA O UNA SALIDA
	gpio_init(touch_tapa, GPIO_IN);

    while(1){
		unsigned int estado_touch_tapa = gpio_read(touch_tapa); //PRESIONADO ES 0, en ABIERTO ES 1	
		while(!estado_touch_tapa){
			estado_touch_tapa = gpio_read(touch_tapa);
			if(estado_touch_tapa){				
				posicion_tapa= (posicion_tapa+1) %2; //HACE CAMBIO DE ESTADO EN EL PIN DE 0 A 1 o de 1 a 0;				
				cuenta_atras=0;
				//ENTERO A STRING						//ELIMINAR#######
				char text2[20];							//ELIMINAR#######
				sprintf(text2, "%d", posicion_tapa);	//ELIMINAR#######
				puts(text2);							//ELIMINAR#######
			}
		}
	}
	return 0;
	
}

//>>>>>>>>>DEFINO LA TAREA 3
char tareaCronometro[THREAD_STACKSIZE_MAIN];
void *tareaCronometro_thread(void *arg){
	div_t resultado;
		while(1){
			//~ if(posicion_tapa){
				resultado=div((max_cuenta_atras-cuenta_atras),60); //hallar resultado y residuo
				minutos=resultado.quot;
				segundos=resultado.rem;
				ztimer_sleep(ZTIMER_MSEC, 1000);
				if(cuenta_atras==max_cuenta_atras){
					posicion_tapa=0;
					pantalla=3;
				}
				cuenta_atras=(cuenta_atras+1)%(max_cuenta_atras+1);
			//~ }else{
				//~ cuenta_atras=0;
			//~ }
		}
	return 0;
}


//>>>>>>>>>DEFINO LA TAREA 4
char tareaPantalla[THREAD_STACKSIZE_MAIN];
void *tareaPantalla_thread(void *arg){
    u8g2_t u8g2;
    /* Inicializar el I2C */
    SETUP_DISPLAY(&u8g2, U8G2_R0, u8x8_byte_hw_i2c_riotos, u8x8_gpio_and_delay_riotos);
    u8x8_riotos_t user_data =
    {
        .device_index = INDEX_DRIVER_HW_I2C,
        .pin_cs = TEST_PIN_CS,
        .pin_dc = TEST_PIN_DC,
        .pin_reset = TEST_PIN_RESET,
    };
	
    u8g2_SetUserPtr(&u8g2, &user_data);
    u8g2_SetI2CAddress(&u8g2, 0x3C);
    /* initialize the display */
    puts("Initializing display.\n");
    u8g2_InitDisplay(&u8g2);
    u8g2_SetPowerSave(&u8g2, 0);
    
	//MENSAJE BIENVENIDA
	while(1){
		switch (pantalla){
			case 0:
				/* start drawing in a loop */
				puts("Drawing on screen.\n");
				u8g2_FirstPage(&u8g2);
				do{
					u8g2_SetDrawColor(&u8g2, 2);
					u8g2_SetFont(&u8g2, u8g2_font_helvB12_tf);
					u8g2_DrawStr(&u8g2, 24, 27, "Bienvenido");
				}while (u8g2_NextPage(&u8g2));
				ztimer_sleep(ZTIMER_MSEC,2000);
				pantalla=1;
			break;
		
			case 1:
			u8g2_FirstPage(&u8g2);
				do {
					u8g2_SetDrawColor(&u8g2, 2);
					u8g2_SetFont(&u8g2, u8g2_font_helvB12_tf);
					//ENTERO A STRING
					char str_minutos[20];
					char str_segundos[20];
					sprintf(str_minutos, "%d", minutos);
					sprintf(str_segundos, "%d", segundos);
					switch (posicion_tapa) {                
						case 0:
							u8g2_DrawStr(&u8g2, 28, 14, "Deposite:");//ESPACIAR PALABRAS DELTA(Y) 16
							u8g2_DrawStr(&u8g2, 4, 32, "Res. Organicos");
							u8g2_DrawStr(&u8g2, 52, 48, "Y");
							u8g2_DrawStr(&u8g2, 30, 64, "Tierra");
						break;            
						
						case 1:
							u8g2_DrawStr(&u8g2, 30, 14, "Tiempo");
							u8g2_DrawStr(&u8g2, 22, 30, "restante");                   
							u8g2_DrawStr(&u8g2, 12, 62, str_minutos);
							u8g2_DrawStr(&u8g2, 29, 60, ":");
							u8g2_DrawStr(&u8g2, 35, 62, str_segundos);
							u8g2_SetFont(&u8g2, u8g2_font_open_iconic_embedded_2x_t);
							u8g2_DrawGlyph(&u8g2, 92, 62, 0x004E);
						break;

						case 2:
							u8g2_SetFont(&u8g2, u8g2_font_open_iconic_weather_2x_t);
							u8g2_DrawGlyph(&u8g2, 20, 20, 0x0042);
						break;
					}
				} while (u8g2_NextPage(&u8g2));
				//TIEMPO DE ESPERA
				ztimer_sleep(ZTIMER_USEC, 1*US_PER_SEC);
			break;
    
			//CUANDO FINALIZA
			case 3:
				/* start drawing in a loop */
				puts("Drawing on screen.\n");
				u8g2_FirstPage(&u8g2);
				do{
					u8g2_SetDrawColor(&u8g2, 2);
					u8g2_SetFont(&u8g2, u8g2_font_helvB12_tf);
					u8g2_DrawStr(&u8g2, 24, 27, "Listo");
				}while (u8g2_NextPage(&u8g2));
				ztimer_sleep(ZTIMER_MSEC,3000);
				pantalla=1;
			break;
		}
	}
    
	return 0;
	
}


//>>>>>>>>>DEFINO LA TAREA 5
char tareaMotor[THREAD_STACKSIZE_MAIN];
void *tareaMotor_thread(void *arg){
	
	//FALTA INICIAR LOS PINES
	gpio_init(PIN1, GPIO_OUT);
	gpio_init(PIN2, GPIO_OUT);
	gpio_init(PIN3, GPIO_OUT);
	gpio_init(PIN4, GPIO_OUT);
	gpio_init(ENA1, GPIO_OUT);
	gpio_init(ENA2, GPIO_OUT);
	
	
	gpio_init(PIN5, GPIO_OUT);
	gpio_init(PIN6, GPIO_OUT);
	gpio_init(PIN7, GPIO_OUT);
	gpio_init(PIN8, GPIO_OUT);
	gpio_init(ENA3, GPIO_OUT);
	gpio_init(ENA4, GPIO_OUT);

	bool paso [4][4] ={
		{1, 0, 1, 0},
		{0, 1, 1, 0},
		{0, 1, 0, 1},
		{1, 0, 0, 1},
		
	};
	int i2=0;
	while(1){
		if(posicion_tapa==1){
			gpio_write(ENA1, 1);
			gpio_write(ENA2, 1);
			gpio_write(PIN1, paso[i2][0]);
			gpio_write(PIN2, paso[i2][1]);
			gpio_write(PIN3, paso[i2][2]);
			gpio_write(PIN4, paso[i2][3]);
			
			gpio_write(ENA3, 1);
			gpio_write(ENA4, 1);
			gpio_write(PIN5, paso[i2][0]);
			gpio_write(PIN6, paso[i2][1]);
			gpio_write(PIN7, paso[i2][2]);
			gpio_write(PIN8, paso[i2][3]);
			
			ztimer_sleep(ZTIMER_MSEC,50);
			i2=(i2+1)%4;
		}else{
			ztimer_sleep(ZTIMER_MSEC, 100);
		}
	}
	return 0;
}


int main(void)
{
	
	//Inicio la Task1 con prioridad -1
	(void) thread_create(
            tarea_flanco_subida_touch, sizeof(tarea_flanco_subida_touch),
            THREAD_PRIORITY_MAIN - 1,
            THREAD_CREATE_WOUT_YIELD | THREAD_CREATE_STACKTEST,
            tarea_flanco_subida_touch_thread, NULL, "FlancoSubida");
	

	//Inicio la Task4 con prioridad -2
	(void) thread_create(
            tareaPantalla, sizeof(tareaPantalla),
            THREAD_PRIORITY_MAIN - 3,
            THREAD_CREATE_WOUT_YIELD | THREAD_CREATE_STACKTEST,
            tareaPantalla_thread, NULL, "Pantalla");
	
	//Inicio la Task2 con prioridad -3
	(void) thread_create(
            tarea_PWM_servo, sizeof(tarea_PWM_servo),
            THREAD_PRIORITY_MAIN - 2,
            THREAD_CREATE_WOUT_YIELD | THREAD_CREATE_STACKTEST,
            tarea_PWM_servo_thread, NULL, "Servo");
	
	//Inicio la Task3 con prioridad -3
	(void) thread_create(
            tareaCronometro, sizeof(tareaCronometro),
            THREAD_PRIORITY_MAIN - 4,
            THREAD_CREATE_WOUT_YIELD | THREAD_CREATE_STACKTEST,
            tareaCronometro_thread, NULL, "Cronometro");
	
	//~ //Inicio la Task5 con prioridad -4
	(void) thread_create(
            tareaMotor, sizeof(tareaMotor),
            THREAD_PRIORITY_MAIN - 5,
            THREAD_CREATE_WOUT_YIELD | THREAD_CREATE_STACKTEST,
            tareaMotor_thread, NULL, "Motor");

    return 0;
}


