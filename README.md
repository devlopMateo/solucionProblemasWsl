# Script Automatizador de Tareas de Mantenimiento en Linux

Este proyecto contiene un script en Bash que automatiza tareas comunes de mantenimiento en sistemas Linux, especialmente útil en entornos WSL o máquinas virtuales.

## Funcionalidades

El script realiza las siguientes operaciones:

1. *Verificación del espacio en disco*: Muestra el uso de disco con df -h.
2. *Limpieza de archivos temporales*: Elimina archivos temporales en un directorio simulado (~/tmp_simulado).
3. *Revisión de permisos*: Lista los permisos de todos los archivos en el directorio $HOME.
4. *Sugerencia de correcciones de seguridad*: Identifica archivos con permisos 777 e imprime sugerencias de cambio a permisos más seguros (chmod 600).
5. *Verificación de servicios básicos*: Simula revisión de servicios como cron, dbus y rsyslog usando ps, ya que systemctl no es compatible con WSL.

Todos los resultados se registran en un archivo de log con fecha: log_YYYY-MM-DD.txt.