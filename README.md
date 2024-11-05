# kedai Buku Kopi

Nama: Clarissa Indriana P
NPM: 2306211660
Kelas: PBP B

## Tugas 7

### Implementasi Elemen Dasar Flutter
1. Installasi Flutter menggunakan brew
2. Set up Android Studio berserta SDK nya
3. Membuat proyek Flutter
4. Merapikan struktur proyek
5. Membuat file baru bernama menu.dart pada direktori lib
6. Membuat Widget Sederhana
7. Mengubah tema warna aplikasi, mengubah kode pada main.dart di bagian tema aplikasi kamu yang mempunyai tipe MaterialApp
8. Mengubah Sifat Widget Halaman Menu Menjadi Stateless
- Pada berkas main.dart, hapus const MyHomePage(title: 'Flutter Demo Home Page')
- Pada berkas menu.dart, mengubah sifat widget halaman dari stateful menjadi stateless
9. Membuat Card Sederhana yang Berisi NPM, Nama, dan Kelas
- Mendeklarasikan tiga variabel bertipe string yang berisi NPM, nama, dan kelas pada class MyHomePage di menu.dart
- Membuat class baru bernama InfoCard pada berkas menu.dart untuk membuat card sederhana yang akan menampilkan informasi NPM, nama, dan kelas
10. Membuat Button Card Sederhana dengan Icon​
- Membuat class baru bernama ItemHomepage yang berisi atribut-atribut dari card yang akan kamu buat (pada kasus ini berisi name dan icon) pada berkas menu.dart
- Membuat list of ItemHomepage yang berisi tombol-tombol yang ingin ditambahkan pada class MyHomePage
- Membuat class ItemCard untuk menampilkan tombol-tombol
11. Mengintegrasikan InfoCard dan ItemCard untuk Ditampilkan di MyHomePage
- Mengintegrasikan dan menampilkan seluruh card di HomePage dengan mengubah bagian Widget build() pada class MyHomePage

### SOAL
**Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya**
- StatelessWidget adalah widget yang tidak memerlukan state internal yang dapat berubah. Artinya, data atau konfigurasi yang digunakan oleh widget ini tidak dapat diubah setelah widget dibuat. StatelessWidget biasanya digunakan untuk UI yang sederhana dan tidak berubah-ubah, seperti label, ikon, atau tombol yang tidak memerlukan interaksi dinamis.
- StatefulWidget digunakan ketika sebuah widget perlu mengelola state yang bisa berubah. Setiap StatefulWidget memiliki State yang dapat diperbarui untuk merespons interaksi dari pengguna atau perubahan data. State dalam StatefulWidget memungkinkan Flutter untuk membangun ulang user interface ketika data berubah.

**Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya**
Dalam proyek ini, beberapa widget Flutter digunakan untuk membangun antarmuka pengguna. Berikut adalah daftar dan fungsi dari widget-widget tersebut:

1. **MaterialApp**: Widget ini digunakan sebagai root aplikasi Flutter dan mengatur tema, navigasi, dan lainnya. Di sini, `MaterialApp` digunakan untuk menetapkan judul aplikasi, tema, dan halaman awal.

2. **Scaffold**: Widget ini menyediakan struktur dasar untuk layar aplikasi, termasuk AppBar, body, dan floating action buttons. Dalam proyek ini, `Scaffold` digunakan untuk menampilkan `AppBar` dan konten utama aplikasi.

3. **AppBar**: Sebuah widget yang muncul di bagian atas aplikasi dan biasanya menampilkan judul dan beberapa aksi. Di sini, `AppBar` digunakan untuk menampilkan judul "Kedai Buku Kopi".

4. **Padding**: Widget ini digunakan untuk memberikan jarak di sekitar widget anaknya. Dalam proyek ini, `Padding` digunakan untuk memberikan jarak di dalam `body` dari `Scaffold`.

5. **Column**: Widget ini mengatur anak-anaknya secara vertikal. Digunakan di beberapa tempat dalam proyek untuk menyusun widget secara vertikal, seperti dalam `body` dari `Scaffold`.

6. **Row**: Widget ini mengatur anak-anaknya secara horizontal. Digunakan untuk menampilkan `InfoCard` secara berdampingan.

7. **InfoCard**: Widget kustom yang merupakan StatelessWidget, digunakan untuk menampilkan informasi seperti NPM, nama, dan kelas dalam bentuk kartu.

8. **SizedBox**: Widget ini digunakan untuk memberikan jarak tetap antar widget, seperti antara baris info dan teks sambutan.

9. **GridView**: Widget ini menampilkan data dalam bentuk grid. Di sini, `GridView` digunakan untuk menampilkan `ItemCard` yang merepresentasikan aksi yang bisa dilakukan pengguna (misalnya, melihat daftar produk).

10. **ItemCard**: Widget kustom yang merupakan StatelessWidget, digunakan untuk menampilkan aksi dalam bentuk kartu yang bisa diklik, dengan ikon dan nama aksi.

11. **Material**: Widget ini biasanya digunakan untuk efek visual pada widget lain, seperti tinta pada InkWell atau elevasi pada Card. Dalam `ItemCard`, `Material` digunakan untuk memberikan warna latar belakang dan membuat sudut kartu melengkung.

12. **InkWell**: Widget ini digunakan untuk menangani gestur tap pada widget. Dalam `ItemCard`, `InkWell` digunakan untuk menampilkan SnackBar ketika kartu ditekan.

13. **Icon**: Widget ini menampilkan ikon dari material icons. Digunakan dalam `ItemCard` untuk menampilkan ikon yang sesuai dengan aksi.

14. **Text**: Widget ini menampilkan string teks dengan berbagai styling. Digunakan di banyak tempat dalam proyek untuk menampilkan teks seperti judul, informasi pada kartu, dan lain-lain.

**Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut**
setState() digunakan untuk memberi tahu Flutter bahwa state dari widget telah berubah, sehingga framework dapat menjadwalkan pembuatan ulang (rebuild) widget tersebut.

Variable yang terdampak:
- Variabel Lokal State: Variabel yang dideklarasikan dalam kelas State yang secara langsung mempengaruhi output dari metode build()
- Widget yang Bergantung pada State: Setiap widget yang propertinya bergantung pada variabel state akan terdampak.

**Jelaskan perbedaan antara const dengan final**
- Waktu Inisialisasi: final bisa diinisialisasi pada runtime, sedangkan const harus diinisialisasi pada compile-time.
- Immutabilitas: Objek const adalah sepenuhnya immutable, sedangkan objek final hanya memiliki referensi yang immutable (isi dapat berubah jika objek memungkinkan).
