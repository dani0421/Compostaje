# Proyecto de Sistemas embebidos
Este es el repositorio del proyecto (Nombre del proyecto) de la materia de Sitemas embebidos 

## Integrantes
Daniela Valentina Amaya Vargas

Diana Patricia Cortés Nava

Brayan David Castro Barbosa

Julian David Escobar Jamioy

## Problemática
Cada año la cantidad de residuos organicos a nivel mundial es de 11.200 millones y contribuyen un 5% a las emisiones de gases de efecto invernadero [1], esto cada año incrementa el calentamiento global, sin contar con que poco a poco los basureros alrededor del mundo estan llegando a su maxima capacidad de desechos. La mayoria de estos residuos se generan en los hogares y generalmente no son reutilizados, es por esto que nace la idea de crear (nombre del proyecto), una basurera de desechos organicos capaz de convertir los residuos en compostaje, esto permitirá que se logren reducir las emisiones de gases de efecto invernadero reutilizando los residuos organicos y convirtiendolos en tierra para abonar las plantas del hogar e incluso las plantas de una huerta.

## Objetivos
### Objetivo General:
Desarrollar un sistema embebido que permita darle un manejo óptimo a los desechos organicos de manera cómoda y sencilla, con el fin de poder ser implementado por cualquier usuario de manera doméstica. 
### Objetivos Especificos:
* Diseñar un sistema compacto que integre diseño de PCB, programación de microcontroladores como ESP32 y diseño físico del prototipo.
* Obtener un producto final comercial, en el que se tenga en cuenta también aspectos financieros incluyendo mano de obra.
* Documentar todas las etapas del proceso de creación del proyecto hasta su finalización.

## Alcance
Elaborar un (nombre del proyecto) capaz de transformar, en cada uso, un volumen no mayor a 1.76 L de residuos orgánicos en compostaje. Contará con 3 modos de acuerdo a cuan lleno se encuentre el tambor, los cuales podrán ser elegidos según usuario vea conveniente; una vez elegido un modo, la pantalla OLED indicará la temperatura, humedad y el tiempo que aun haga falta para que el compostaje esté listo y pueda ser retirado de (nombre del proyecto). 

## Requerimientos

### Requerimientos funcionales

* Seleccionar el nivel de compostaje que el dispositivo contiene.
* Visualizar por medio de pantalla el tiempo que falta para finalizar el proceso.
* Notificar al usuario cuando los filtros requieran ser reemplazados. 
* Evitar que el dispositivo genere malos olores.
* Notificar al usuario por medio de un mensaje vía Telegram cuando se acabó el proceso de compostaje.

### Requerimientos no funcionales

* El sistema requiere de un tiempo mínimo de 24 horas para realizar un proceso.
* El sistema debe permitir consultar información sobre el proceso vía Bluetooth/WiFi.


## Diagrama de bloques

![Diagrama de bloques compost(2)](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/Esquema2.PNG)

### Potencia

Para poder diseñar la etapa de potencia es necesario conocer los voltajes y corrientes de cada uno de los componentes a usar, tal como se muestra en la siguiente tabla.
![Tabla de potencias](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/TablaPotencia.PNG)

Haciendo uso de un diodo rectificador y dos etapas con AMS1117, podemos obtener en esta etapa 3 salidas de voltaje. (3.3V ,5V y 12V).

![Esquema potencia](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/EsquemaPotencia.PNG)

### Sensor Efecto Hall

![Esquema Hall](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/EsquemaHall.PNG)

### Optoacoplador
Servira para realizar un desacople fisico entre el ESP32 y el controlador (LN298N) de nuestros motores, debido a que su voltaje de trabajo es diferente; se hara uso de la referencia TLP281 de 4 canales.
![Esquema Optoacoplador](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/EsquemaOptoacoplador.PNG)

###Controlador de Motor
Referencia L298N que posee 4 pines de salida, teniendo en cuenta que nuestro motor es un KH56JM2U047 de bifase y con 4 pines de entrada.
![EsquemaControlador](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/EsquemaControlador.PNG)


### Pantalla OLED
Se usará la referencia SSD1306, la cual posee una matriz de 128x64 y cuya alimentación necesaaria es de 3.3V ([DATASHEET](https://html.alldatasheet.com/html-pdf/1179026/ETC2/SSD1306/701/6/SSD1306.html)); donde el usuario podra observar el tiempo que aun hace falta para que el compostaje este listo.

![OLEDimagen](https://lastminuteengineers.b-cdn.net/wp-content/uploads/arduino/128x64-Blue-I2C-OLED-Display.jpg)

El SDA se conecta al pin 33 del ESP32 y el SCL al pin 36 de ESP32, cabe resaltar que en la placa no quedaran orificios para la pantalla, unicamente los pines para hacer la conexión.






![OLEDKIcad](https://raw.githubusercontent.com/dani0421/Compostaje/main/OLED_kicad.png)




## Referencias
[1] Nations, U. (2022). Datos y cifras | Naciones Unidas. Retrieved 24 August 2022, from https://www.un.org/es/actnow/facts-and-figures
