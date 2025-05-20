#!/bin/bash

#===== ПЕРЕМЕННЫЕ =============================================================#

brightness=$(brightnessctl g | awk '{print int($1)}' | tr -d '\n\r')
volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100)}')

#===== ЗАПУСК ПАНЕЛИ И УСТАНОВКА ЗНАЧЕНИЙ =====================================#

eww open arch-menu
eww update brightness=$brightness
eww update volume=$volume

#==============================================================================#
