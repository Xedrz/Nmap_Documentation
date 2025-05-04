# Nmap_Documentation
Deskripsi
Proyek ini bertujuan untuk menyediakan skrip otomatis menggunakan Nmap untuk melakukan pemindaian jaringan, pemindaian port, dan deteksi sistem operasi pada perangkat yang ada di jaringan. Proyek ini mengandung skrip Bash yang dapat digunakan di sistem Linux atau macOS untuk menjalankan tugas-tugas tersebut.

Struktur Folder
```
Nmap-Documentation/
├── scripts/
│   ├── scan_network.sh    # Skrip untuk pemindaian jaringan
│   ├── scan_ports.sh      # Skrip untuk pemindaian port
│   └── detect_os.sh       # Skrip untuk deteksi sistem operasi
└── README.md              # Dokumentasi proyek ini
```
Instalasi
Instalasi Nmap:
Pastikan Nmap sudah terinstal di sistem Anda. Jika belum, Anda bisa menginstalnya dengan perintah berikut:

Linux (Ubuntu/Debian):
```
sudo apt update
sudo apt install nmap
```
macOS (menggunakan Homebrew):
```
brew install nmap
```
Windows:

Unduh Nmap dari situs resmi Nmap dan ikuti petunjuk instalasi.

Menyiapkan Folder Proyek:
Buat folder untuk menyimpan hasil pemindaian:
```
mkdir -p results
```
Skrip
1. scan_network.sh - Pemindaian Jaringan
Skrip ini digunakan untuk melakukan pemindaian jaringan (ping sweep) untuk menemukan perangkat yang terhubung di jaringan yang sama.

Penggunaan:
```
./scripts/scan_network.sh
```
Penjelasan:
Skrip ini akan meminta pengguna untuk memasukkan subnet jaringan (misalnya: 192.168.1.0/24).

Hasil pemindaian akan disimpan di file results/network_scan.txt.

2. scan_ports.sh - Pemindaian Port
Skrip ini digunakan untuk memindai port terbuka pada alamat IP tertentu.

Penggunaan:
```
./scripts/scan_ports.sh
```
Penjelasan:
Skrip ini akan meminta pengguna untuk memasukkan alamat IP target.

Pemindaian dilakukan pada port 1 hingga 65535.

Hasil pemindaian akan disimpan di file results/{IP_target}_port_scan.txt.

3. detect_os.sh - Deteksi Sistem Operasi
Skrip ini digunakan untuk mendeteksi sistem operasi yang digunakan oleh perangkat target dengan Nmap.

Penggunaan:
```
sudo ./scripts/detect_os.sh
```
Penjelasan:
Skrip ini akan meminta pengguna untuk memasukkan alamat IP target.

Skrip memerlukan hak akses sudo untuk melakukan deteksi sistem operasi.

Hasil deteksi OS akan disimpan di file results/{IP_target}_os_detect.txt.

Catatan:
Perlukan hak akses root (sudo) untuk deteksi sistem operasi.

Pastikan folder results/ sudah ada untuk menyimpan hasil pemindaian.
