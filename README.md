# PAB_Pertemuan4

## NAMA: ZAHRA AURELLYA HERDIANSYAH
## NIM: 2409116062
## KELAS: SI B 2024

# PART 5: SHOPPING CARTS HANDS-ON

### lib

<img width="162" height="134" alt="image" src="https://github.com/user-attachments/assets/f9e2fd12-4aba-48cf-afc8-1b34269dd7f8" />

Di dalam folder 'lib' berisi:


1. models
   
   <img width="224" height="158" alt="image" src="https://github.com/user-attachments/assets/3767e4db-8128-4dbe-9498-5af847788be3" />
   
  a) cart_item.dart
  
    file ini berisi model cart item yang digunakna untuk merepresentasikan satu item di dalam keranjang  belanja. class Cartitem menyimpan:
   - data produk
   - jumlah pembelian
   - perhitungan otomatis total harga, yaitu harga produk dikalikan jumlahnya
     model ini berfungsi sebagai penghubung antara data produk dan sistem keranjang, sehingga aplikasi bisa menyimpan item yang dipilih pengguna sekaligus menghitung total biaya secara otomatis.

  b) cart_model.dart
  
    file ini adalah pusat manajemen state keranjang belanja, yang menangani logika tambah, hapus, update jumlah, serta perhitungan total harga, dan menghubungkannya langsung ke tampilan melalui sistem state management Flutter.

  c) counter_model.dart
  
    file ini berfungsi sebagai contoh implementasi dasar state management di Flutter menggunakan ChangeNotifier, di mana perubahan data lansung meng-update tampilan aplikasi secara otomatis.

  d) product.dart
  
    file ini berfungsi sebagai struktur data utama untuk produk yang nantinya digunakan di fitur katalog maupun keranjang belanja dalam aplikasi.


2. pages
   
   <img width="301" height="326" alt="image" src="https://github.com/user-attachments/assets/6f676ad0-d8ac-4155-8f01-234d3f50250b" />
   
   a) cart_page.dart
   
     file ini berfungsi sebagai halaman utama keranjang belanja, yang menghubungkan tampilan UI dengan logika state management (cartmodel). semua perubahan data lansgung memperbarui UI karena menggunakan consumer dan changenotifier.

  b) counter_display_page.dart
  
    file ini menunjukkan contoh passing data antar halaman (via constructor) di Flutter, sekaligus memperlihatikan perbedaan antara widget yang hanya menampilkan data dan widget yang mengelola state.

  c) counter_page.dart
  
    file ini menunjukkan contoh dasar state management menggunakan setState(), dimana state dikelola secara lokal dalam satu halam dan bisa dikirim ke halaman lain melalui navigasi.

  d) counter_provider_page.dart
  
    file ini menunjukkan implementasi state management menggunakan provider, di mana state dikelola terpisah dari UI dan hanya bagian tertentu yang diperbarui saat terjadi perubahan data.

   e) home_page.dart
   
      file ini merupakan contoh pengelolaan state lokal dengan setState(), sekaligus demostrasi komunikasi antar halaman menggunakan parameter dan callback.

   f) product_list_page.dart
   
      file ini berfungsi sebagai halaman katalog produk, yang terhubung lansgung dengan sistem keranjang melalui provider. halaman ini menjadi pintu uatama pengguna untuk memilih dan menambahkan produk ke cart.

   g) profile_page.dart
   
      file ini menunjukkan contoh komunikasi antar halaman di Flutter, di mana data dan fungsi dikirim berantai dari satu halaman lain tanpa menggunakan state management global.

   h) settings_page.dart
   
      file ini menunjukkan bagaimana state bisa dikontrol dari halaman yang lebih dalam menggunakan callback, sekaligus memperlihatkan keterbatasan pendekatan manual ketika struktur halaman semakinn kompleks.

   i) checkout_page.dart

      file ini merupakan halaman final sebelum transaksi selesai. disini user mengisi data dan menekan tombol konfirmasi untuk menyelesaikan pembelian.


3. main.dart
   
   file ini berfungsi sebagai setup utama aplikasi, khususnya untuk mengaktifkan state management menggunakan provider dan menentukan halaman pertama yang ditampilkan saat aplikasi dijalankan.

### pubspec.yaml

file ini merupakan konfigurasi uatama project Flutter, yang berisi informasi aplikasi, versi SDK, serta daftar depencency yang digunakan. file ini berfungsi sebagai pengatur dependency dan konfigurasi project, yang memastikan aplikasi dapat menggunakan Flutter dan Provider untuk menjalankan fitur state management.
