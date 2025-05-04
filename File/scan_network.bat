@echo off
:: Skrip untuk pemindaian jaringan
echo Menyaring perangkat dalam jaringan...
nmap -sn 192.168.1.0/24 > results/network_scan.txt
echo Pemindaian jaringan selesai! Hasil disimpan di results/network_scan.txt
pause
