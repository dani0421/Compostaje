# Proyecto de Sistemas embebidos
Este es el repositorio del proyecto (Nombre del proyecto) de la materia de Sitemas embebidos 

## Integrantes
Daniela Valentina Amaya Vargas

Diana Patricia Cortés Nava

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


## Diagrama de bloques

![Diagrama de bloques compost(4)](https://user-images.githubusercontent.com/92388558/206089834-ab8c96dc-c758-45fa-aa8b-2dbd36a71729.png)

## Componentes

### Optoacoplador
Servira para realizar un desacople fisico entre el ESP32 y el controlador (LN298N) de nuestros motores, debido a que su voltaje de trabajo es diferente; se hara uso de la referencia TLP281 de 4 canales.
![Esquema Optoacoplador](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/EsquemaOptoacoplador.PNG)
![image](https://user-images.githubusercontent.com/92388558/206090374-d1ae5578-d8eb-407b-bdd5-14a63545aa35.png)


### Controlador de Motor
Referencia L298N que posee 4 pines de salida, teniendo en cuenta que nuestro motor es un KH56JM2U047 de bifase y con 4 pines de entrada.
![EsquemaControlador](https://raw.githubusercontent.com/dani0421/Compostaje/main/Imagenes/EsquemaControlador.PNG)

![image](https://user-images.githubusercontent.com/92388558/206090517-8131f3aa-ace3-4e3b-b908-f86b8900f778.png)


### Pantalla OLED
Se usará la referencia SSD1306, la cual posee una matriz de 128x64 y cuya alimentación necesaaria es de 3.3V ([DATASHEET](https://html.alldatasheet.com/html-pdf/1179026/ETC2/SSD1306/701/6/SSD1306.html)); donde el usuario podra observar el tiempo que aun hace falta para que el compostaje este listo. Cuya dirección para I2C es 0x3C.

![OLEDimagen](https://lastminuteengineers.b-cdn.net/wp-content/uploads/arduino/128x64-Blue-I2C-OLED-Display.jpg)

El SDA se conecta al pin 33 del ESP32 y el SCL al pin 36 de ESP32, cabe resaltar que en la placa no quedaran orificios para la pantalla, unicamente los pines para hacer la conexión.

### Touch
Aunque la ESP posee pines que se pueden usar como touch, se optó por hacer uso de un touch capacitivo externo, el cual nos permitirá abrir la tapa principal, que es por donde se introducira los residuos organicos junto a la tierra que posteriormente se mezclará. La referencia a usar es HW-139

![image](https://user-images.githubusercontent.com/92388558/206050294-f4ffbe3c-957d-474a-8931-0f23858014df.png)

### Motor Nema
Para el proceso de triturado de los residuos organicos y mezclado se usaran dos motores NEMA 17, estos son motores bipolares que pueden ser alimentados con un voltaje de 12 a 24 voltios, se opto por alimentarlos a un voltaje de 12V. 

![image](https://user-images.githubusercontent.com/92388558/206050679-38d5722c-0e51-4c39-a9a6-b2fa4948b815.png)

### Servomotor

El servomotor se usara para abrir y cerrar la tapa de la basuera 
![image](https://user-images.githubusercontent.com/92388558/206090041-55c7ca8b-3718-4a87-84e6-bed6820fe1f1.png)

# Montaje fisico

## Referencias
[1] Nations, U. (2022). Datos y cifras | Naciones Unidas. Retrieved 24 August 2022, from https://www.un.org/es/actnow/facts-and-figures

