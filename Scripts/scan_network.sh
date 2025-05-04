#!/bin/bash

echo "==============================="
echo "     PEMINDAIAN JARINGAN"
echo "==============================="
read -p "Masukkan subnet jaringan (contoh: 192.168.1.0/24): " subnet

echo "Memulai pemindaian jaringan untuk $subnet ..."
nmap -sn "$subnet" -oN results/network_scan.txt
echo "Pemindaian selesai! Hasil disimpan di results/network_scan.txt"
