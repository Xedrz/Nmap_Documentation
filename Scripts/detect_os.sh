#!/bin/bash

echo "==============================="
echo "    DETEKSI SISTEM OPERASI"
echo "==============================="
read -p "Masukkan IP target: " target_ip

echo "Memulai deteksi sistem operasi pada $target_ip ..."
sudo nmap -O "$target_ip" -oN results/"$target_ip"_os_detect.txt
echo "Deteksi selesai! Hasil disimpan di results/$target_ip_os_detect.txt"
