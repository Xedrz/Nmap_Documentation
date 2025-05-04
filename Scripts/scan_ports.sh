#!/bin/bash

echo "==============================="
echo "        PEMINDAIAN PORT"
echo "==============================="
read -p "Masukkan IP target: " target_ip

echo "Memulai pemindaian port pada $target_ip ..."
nmap -p 1-65535 "$target_ip" -oN results/"$target_ip"_port_scan.txt
echo "Pemindaian selesai! Hasil disimpan di results/$target_ip_port_scan.txt"
