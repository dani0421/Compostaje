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
### Objetivos Especificos:

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

![Diagrama de bloques compost(2)](https://user-images.githubusercontent.com/92388558/187092891-f2678916-125e-4c9e-a82b-d6b26aae57cc.png)

### Pantalla OLED
Se hará uso de la referencia SSD1306, la cual posee una matriz de 128x64 y cuya alimentación necesaaria es de 3.3V; donde el usuario podra observar -----------.

![OLEDimagen](https://lastminuteengineers.b-cdn.net/wp-content/uploads/arduino/128x64-Blue-I2C-OLED-Display.jpg)

El SDA se conecta al pin 33 del ESP32 y el SCL al pin 36 de ESP32, cabe resaltar que en la placa no quedaran orificios para la pantalla, unicamente los pines para hacer la conexión.

![OLEDKIcad](https://raw.githubusercontent.com/dani0421/Compostaje/main/OLED_kicad.png)




## Referencias
[1] Nations, U. (2022). Datos y cifras | Naciones Unidas. Retrieved 24 August 2022, from https://www.un.org/es/actnow/facts-and-figures
