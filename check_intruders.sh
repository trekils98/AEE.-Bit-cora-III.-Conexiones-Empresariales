#!/bin/bash

# ==========================================
# Script: check_intruders.sh
# Descripción:
# Analiza intentos fallidos de SSH y genera informe
# ==========================================

# Archivo de logs del sistema
LOG="/var/log/auth.log"

# Archivo de salida del reporte
OUTPUT="alertas.txt"

# Fecha actual
FECHA=$(date)

# Filtrar intentos fallidos de SSH
# grep busca las líneas que contienen errores de login
INTENTOS=$(grep "Failed password" $LOG)

# Contar número total de intentos
TOTAL=$(echo "$INTENTOS" | wc -l)

# Extraer IPs de los ataques
# awk obtiene la columna donde está la IP
IPS=$(echo "$INTENTOS" | awk '{print $(NF-3)}')

# Generar reporte (sobrescribe el archivo)
echo "==================================" > $OUTPUT
echo " REPORTE DE SEGURIDAD SSH " >> $OUTPUT
echo " Fecha: $FECHA" >> $OUTPUT
echo "==================================" >> $OUTPUT
echo "" >> $OUTPUT

# Mostrar total de ataques detectados
echo "Total de intentos fallidos: $TOTAL" >> $OUTPUT
echo "" >> $OUTPUT

# Mostrar IPs únicas con número de repeticiones
echo "IPs detectadas:" >> $OUTPUT
echo "$IPS" | sort | uniq -c >> $OUTPUT

echo "" >> $OUTPUT

# Mostrar detalle completo
echo "Detalle de intentos:" >> $OUTPUT
echo "$INTENTOS" >> $OUTPUT