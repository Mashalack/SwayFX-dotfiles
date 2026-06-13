#!/bin/bash

# Verifica si wlsunset se está ejecutando
if pgrep -x "wlsunset" >/dev/null; then
  # Si está encendido, lo apaga
  pkill x "wlsunset"
else
  # Si está apagado, lo enciende con tus parámetros
  # Ajusta -S (amanecer) y -s (atardecer) a tus horas preferidas
  wlsunset -S 07:00 -s 19:00 &
fi
