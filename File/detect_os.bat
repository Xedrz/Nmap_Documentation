@echo off
:: Skrip untuk deteksi sistem operasi
set /p target_ip="Masukkan IP target untuk deteksi sistem operasi: "
echo Menyaring deteksi sistem operasi untuk %target_ip%...
nmap -O %target_ip% > results/%target_ip%_os_detect.txt
echo Deteksi OS selesai! Hasil disimpan di results\%target_ip%_os_detect.txt
pause
