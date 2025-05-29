#!/bin/bash
# Script: automate.sh
# Descripción: Automatiza revisión de disco, limpieza de temporales, verificación de permisos y servicios.

LOGFILE="log_$(date +%F).txt"
TMP_DIR=~/tmp_simulado

echo "=== Inicio del script: $(date) ===" | tee -a "$LOGFILE"

# 1. Verificar espacio en disco
echo -e "\n>> Espacio en disco:" | tee -a "$LOGFILE"
df -h | tee -a "$LOGFILE"

# 2. Eliminar archivos temporales
echo -e "\n>> Eliminando archivos temporales en $TMP_DIR" | tee -a "$LOGFILE"
mkdir -p "$TMP_DIR"
find "$TMP_DIR" -type f -exec rm -v {} \; | tee -a "$LOGFILE"

# 3. Verificar permisos de archivos
echo -e "\n>> Verificando permisos en $HOME" | tee -a "$LOGFILE"
find ~ -type f -exec ls -l {} \; | tee -a "$LOGFILE"

# 4. Simular sugerencia de correcciones (ejemplo simple)
echo -e "\n>> Sugerencias de permisos inseguros:" | tee -a "$LOGFILE"
find ~ -type f -perm 777 -exec echo "Archivo con permisos 777: {} – sugerido: chmod 600 '{}'" \; | tee -a "$LOGFILE"

# 5. Simular verificación de servicios sin systemctl (WSL no soporta systemctl nativo)
echo -e "\n>> Verificando servicios simulados con ps:" | tee -a "$LOGFILE"
ps -e | grep -E "cron|dbus|rsyslog" | tee -a "$LOGFILE"

echo "=== Fin del script: $(date) ===" | tee -a "$LOGFILE"
