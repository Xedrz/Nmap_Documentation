@echo off
:: Skrip untuk pemindaian port
set /p target_ip="Masukkan IP target untuk pemindaian port: "
echo Memulai pemindaian port pada %target_ip%...
nmap -p 1-65535 %target_ip% > results/%target_ip%_scan.txt
echo Pemindaian port selesai! Hasil disimpan di results\%target_ip%_scan.txt
pause
