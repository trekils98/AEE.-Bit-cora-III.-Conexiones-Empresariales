# AEE.-Bit-cora-III.-Conexiones-Empresariales

Fundamentos de Seguridad y Auditoría

Reto de Investigación 1: Un servidor Syslog se utiliza como un punto que genera sus propios registros. Su función es almacenar eventos o mensajes del dispositivo local en el dispositivo electrónico, para así enviar la información a un servidor Syslog y poder ordenar o filtrar los registros y datos. 
El concepto de Severity determina la importancia del mensaje, siendo un número del 0 al 7, siendo 7 el menos importante y el 0 la máxima prioridad. El concepto de Facility determina el tipo de programa, siendo un número del 0 al 23. Estos dos conceptos trabajan para filtrar y gestionar los mensajes permitiendo ver lo más importante primero.
Que el archivo /var/log/auth.log tenga permisos de lectura para usuarios no privilegiados es una negligencia grave porque en ese archivo quedan registrados todos los eventos de autenticación, entonces si un usuario no autorizado obtiene esta información. Con esta información una persona externa puede tener un índice del nombre de los usuarios con sus contraseñas, siendo esto una gran brecha en la seguridad.
La información que diferencia un intento fallido de conexión remota SSH de un simple fallo de contraseña de un usuario local frente a la pantalla es en la presencia de direcciones IP origen, nombres de proceso específicos y los métodos de autenticación.

Reto de Investigación 2: 
Enviar y custodiar los logs en un servidor externo seguro en lugar de mantenerlos dispersos e indefensos en la propia máquina que podría ser vulnerada ofrece varias ventajas, siendo la principal una seguridad avanzada y una defensa crítica: inalterabilidad de la Evidencia, detección proactiva de amenazas, reducción del tiempo de respuesta, alertas inteligentes; también una ventaja importante es que sería todo legal y normativo: cadena de custodia probatoria, blindaje ante el RGPD, certificaciones internacionales; y tambien otra gran ventaja seria la eficiencia operativa del negocio: visión holística de la infraestructura, ahorro de costes y recursos, análisis de tendencias y mejora continua.

https://blog.invgate.com/es/que-es-syslog#cundo-se-utiliza-syslog
https://docs.bmc.com/xwiki/bin/view/Mainframe/Security/BMC-Defender-Agent-for-Windows/defawin62/Reference/Facility-and-severity-codes/
https://www.huntress.com/cybersecurity-101/topic/centralized-logging
