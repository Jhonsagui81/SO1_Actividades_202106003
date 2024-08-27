# TIPOS DE KERNEL

## KERNEL MONOLITICO
Es un único programa grande que gestiona todas las funciones del sistema operativo.

- Este tipo de kernel tiene una **Alta eficiencia** ya que al ser un solo programa, las llamadas entre componentes son directas, lo que reduce la sobrecarga.
- Modificar una parte del kernel puede afectar a todo el sistema.
- Los componentes están estrechamente acoplados.
Ejemplos: Linux, Windows (aunque con elementos híbridos).

## MICROKERNELS
Un kernel pequeño que proporciona solo las funciones más básicas del sistema operativo, delegando el resto a procesos que se ejecutan en el espacio del usuario.

- Los componentes son independientes y pueden ser reemplazados o actualizados sin afectar al resto del sistema.
- Si un proceso falla, no afecta al kernel.
- La comunicación entre componentes puede ser más lenta debido a la necesidad de pasar por el kernel.
Ejemplos: Minix, QNX.

## KERNEL HIBRIDO
Combina las características de los kernels monolíticos y microkernels.

- Permite elegir qué funciones se ejecutan en el kernel y cuáles en el espacio del usuario.
- Ofrece un equilibrio entre ambos aspectos.
Ejemplos: Algunos sistemas operativos basados en Linux, como algunas distribuciones que utilizan módulos cargables.

|Caracteristicas    |Monolitico |Microkernel|Hibrido    |
|-------------------|-----------|-----------|-----------|
|Tamano             |Grande     |Pequeno    |Intermedio |               
|Modularidad        |Baja       |Alta       |Medio      |
|Rendimiento        |Alto       |Bajo       |Medio      |
|Seguridad          |Menor      |Mayor      |Medio      |
|Desarrolo          |Complejo   |Sencillo   |Intermedio |

# USER vs KERNEL MODE

El modo usuario y el modo kernel son dos estados en los que puede operar un procesador en un sistema operativo. Estos modos son fundamentales para la seguridad y la gestión de recursos del sistema.

## Mode USER
- Es el modo en el que se ejecutan la mayoría de las aplicaciones y procesos.
- Las aplicaciones que se ejecutan en este modo tienen acceso limitado a los recursos del sistema. No pueden acceder directamente al hardware ni modificar partes críticas del sistema operativo. Esto se hace para proteger el sistema de posibles daños causados por aplicaciones maliciosas.
- El modo usuario proporciona un entorno seguro para que las aplicaciones se ejecuten sin poner en riesgo la estabilidad del sistema.
Ejemplos de tareas: Ejecutar programas, editar documentos, navegar por internet

## Mode KERNEL MODE
- Es el modo en el que se ejecuta el kernel del sistema operativo.
- El kernel tiene acceso completo a todos los recursos del hardware y puede ejecutar cualquier instrucción. Esto le permite gestionar la memoria, los procesos, los dispositivos de entrada/salida y otras funciones críticas del sistema.
- Aunque el kernel tiene todos los privilegios, debe ser extremadamente robusto para evitar que el sistema se vuelva inestable.
Ejemplos de tareas: Gestionar la memoria, programar tareas, manejar interrupciones, comunicarse con dispositivos de hardware.

|Caracteristicas    |Modo Usuario       |Modo kernel      |
|-------------------|-------------------|-----------------|   
|Privilegios        |Limitados          |Completos        |               
|Acceso a hardware  |Restringido        |Total            |
|Proposito          |Ejecutar apps      |Gestionar Sistema|
|Seguridad          |Mas para sistema   |Mayor riesgo     |

# Interruption vs. Traps

Ambos son mecanismos que causan un cambio de modo en un procesador, generalmente desde el modo usuario al modo kernel, pero tienen características y propósitos distintos.

## INTERRUPTION
- Son eventos asíncronos, es decir, ocurren de forma inesperada y externa al proceso en ejecución.
- Pueden ser provocadas por hardware (por ejemplo, un dispositivo de entrada/salida que ha terminado una operación) o por software (por ejemplo, una excepción aritmética).
- Sirven para notificar al sistema operativo de eventos importantes que requieren atención inmediata, como la llegada de datos de una red, la finalización de una operación de E/S o un error de hardware.
- El proceso en ejecución no tiene control directo sobre cuándo ocurrirá una interrupción.

## TRAPS
- Son eventos síncronos, es decir, son causados intencionalmente por una instrucción del programa en ejecución.
- Se utilizan para solicitar servicios al sistema operativo, como realizar una llamada al sistema o generar una excepción.
- Permiten que los programas interactúen con el sistema operativo de manera controlada y soliciten recursos o servicios.
- El proceso en ejecución puede iniciar una trampa en cualquier momento.


|Caracteristicas    |Interrupcion           |Trampa                 |
|-------------------|-----------------------|-----------------------|   
|Origin             |Asincrono              |Sincrono               |               
|Cause              |Hardware y software    |Instruccion programa   |
|Proposito          |Notificar eventos      |Solicita servicio Sist.|
|Control            |No control de proceso  |Tiene control del proc.|