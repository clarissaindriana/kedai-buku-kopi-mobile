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


## Tugas 8

### Implementasi Flutter Navigation, Layouts, Forms, and Input Elements
1. Menambahkan Drawer Menu Untuk Navigasi
- Membuat direktori baru bernama widgets di subdirektori lib/. Kemudian, membuat berkas dengan nama left_drawer.dart
- Tambahkan impor untuk halaman-halaman yang ingin dimasukkan navigasinya ke dalam Drawer Menu
- Memasukkan routing untuk halaman-halaman yang diimpor
Navigator.pop(context); // Menutup drawer
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProductEntryFormPage(),
                ),
              );
- Menghias drawer dengan memasukkan drawer header di TODO: Bagian drawer header
- Memasukka drawer ke halaman yang diinginkan
// Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
      drawer: const LeftDrawer(),

2. Menambahkan Form dan Elemen Input
- Membuat berkas baru pada direktori lib dengan nama productentry_form.dart
- Secara keseluruhan, menambahkan kerangka dasar untuk membuat halaman form entri
- Ubah widget Placeholder
- Membuat struktur dasar halaman form dengan material design ( Siap untuk menampung form fields yang bisa di-scroll, sudah memiliki styling dasar (warna primary untuk app bar dan teks putih), siap untuk ditambahkan drawer)
- Membuat variabel baru bernama _formKey dengan nilai GlobalKey<FormState>(); lalu tambahkan _formKey tersebut ke dalam atribut key milik widget Form. Atribut key akan berfungsi sebagai handler dari form state, validasi form, dan penyimpanan form.
- Mengisi widget Form dengan field. Membuat beberapa variabel untuk menyimpan input dari masing-masing field yang akan dibuat.
- Membuat form field untuk masing masing field/variable (berisi validasi beserta UI/UX)
- Buatlah tombol sebagai child selanjutnya dari Column. Bungkus tombol ke dalam widget Padding dan Align. Tombol belum untuk menyimpan data ke database (hanya untuk memunculkan pop-up)

3. Memunculkan Data
- Menambahkan fungsi showDialog() pada bagian onPressed() dari potongan kode yang sebelumnya ditambahkan. Lalu memunculkan widget AlertDialog pada fungsi tersebut. 

4. Menambahkan Fitur Navigasi pada Tombol​
- Buat agar kode yang terletak pada atribut onTap dari InkWell dapat melakukan navigasi ke route lain

### SOAL
**Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?**
1. Kegunaan const di Flutter:
- Immutability: Menggunakan const membuat suatu nilai atau objek tidak bisa diubah setelah diinisialisasi.
- Performance: Objek yang dibuat dengan const di Flutter tidak dibuat ulang setiap kali aplikasi dibangun ulang

2. Keuntungan menggunakan const:
- Optimasi Performa: Karena objek const tidak perlu dibuat ulang, aplikasi dapat berjalan lebih cepat dan lebih responsif.
- Kode yang Lebih Bersih dan Mudah Dibaca: Menggunakan const secara eksplisit menunjukkan bahwa nilai atau objek tersebut tidak akan berubah

3. Kapan Menggunakan const:
- Widget yang Tidak Berubah: Gunakan const untuk widget atau nilai yang tidak berubah setelah diinisialisasi

4. Kapan Tidak Menggunakan const:
- Nilai yang Berubah: Jika nilai objek perlu diubah pada runtime
- Objek dengan Konstruktor yang Membutuhkan Logika atau Perhitungan: Jika konstruktor sebuah objek melakukan perhitungan atau memiliki logika yang harus dijalankan

**Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!**
1. Penggunaan Column:
- Column digunakan untuk mengatur widget secara vertikal.
- Anak-anak dari Column disusun dari atas ke bawah.
- Sangat berguna untuk membuat tampilan yang elemen-elemennya ditumpuk secara vertikal, seperti formulir atau daftar.

2. Penggunaan Row:
- Row digunakan untuk mengatur widget secara horizontal.
- Anak-anak dari Row disusun dari kiri ke kanan.
- Cocok untuk membuat tampilan yang memerlukan elemen-elemen berdampingan, seperti toolbar atau status bar.

**Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!**
TextFormField untuk Nama: Mengumpulkan nama produk.
TextFormField untuk Harga: Mengumpulkan harga produk dalam bentuk numerik.
TextFormField untuk Deskripsi: Mengumpulkan deskripsi produk.
TextFormField untuk Rating: Mengumpulkan rating produk dalam bentuk numerik.
TextFormField untuk Pairing: Mengumpulkan informasi tentang pairing produk.

Elemen Input Flutter Lain yang Tidak Digunakan: DropdownButtonFormField, CheckboxListTile, RadioListTile, SwitchListTile, Slider, Date & Time Pickers, dll

**Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?**
Dapat mendefinisikan tema aplikasi di dalam MaterialApp widget menggunakan properti theme. Tema ini akan secara otomatis diterapkan ke semua widget dalam aplikasi yang mendukung theming. Kita dapat mengakses tema yang telah ditetapkan menggunakan Theme.of(context). Ini memungkinkan kita untuk menggunakan warna, font, dan style lain yang telah didefinisikan di tema.

Ya, saya mengimplementasikannya melalui main.dart

**Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?**
1. Navigasi Dasar dengan Navigator.push dan Navigator.pop
2. Named Routes
- Mendefinisikan routes di dalam MaterialApp dan menggunakan nama untuk navigasi
3. Nested Navigators

## Tugas 9
### Implementasi Flutter Networking, Authentication, and Integration
1.Django Berjalan dengan Baik
- Mengonfigurasi ALLOWED_HOSTS, menambahkan konfigurasi CORS, dan memastikan bahwa database dan aplikasi sudah terhubung dengan benar.

2. Mengimplementasikan Fitur Registrasi Akun pada Proyek Tugas Flutter
- Membuat form registrasi dengan TextFormField di Flutter untuk menginput data seperti username, password, dan confirm password.
- Mengonfigurasi onPressed pada tombol registrasi untuk mengirim data ke server Django melalui API menggunakan http request.
- Setelah data diterima oleh server, server memverifikasi apakah username sudah ada dan apakah password sesuai. Jika berhasil, menampilkan pesan sukses di aplikasi Flutter.
- Menangani kasus error seperti password yang tidak cocok atau username yang sudah terdaftar dengan menampilkan pesan error yang sesuai.

3. Membuat Halaman Login pada Proyek Tugas Flutter
- Halaman login menggunakan TextFormField untuk input username dan password.
- Data dimasukkan dikirim ke server Django menggunakan http request untuk memverifikasi kredensial.
- Menyimpan status login di Flutter menggunakan Provider atau SharedPreferences agar pengguna tetap terautentikasi saat aplikasi digunakan kembali.
- Halaman ini juga menangani kesalahan seperti password atau username yang tidak cocok dengan memberikan pesan error di Flutter.

4. Mengintegrasikan Sistem Autentikasi Django dengan Proyek Tugas Flutter
- Mengimpor pbp_django_auth untuk memudahkan integrasi autentikasi antara Django dan Flutter.
- Menggunakan CookieRequest untuk menyimpan cookie atau token autentikasi setelah pengguna berhasil login. Setiap request berikutnya akan mengirimkan cookie ini untuk memastikan bahwa pengguna tetap terautentikasi.
- Memastikan bahwa pengguna hanya dapat mengaksesnya jika mereka sudah login dengan memeriksa status login melalui Provider atau CookieRequest.

5. Membuat Model Kustom Sesuai dengan Proyek Aplikasi Django
- Membuat model di Django untuk item yang berisi informasi seperti name, price, description, dan atribut lainnya.
- Di Flutter, buat model dengan nama yang sesuai yang mencerminkan struktur data yang dikirimkan oleh server Django.
- Menggunakan fromJson dan toJson di Flutter untuk mengonversi data JSON dari API ke dalam objek Dart yang sesuai dan sebaliknya.

6. Membuat Halaman Daftar Semua Item dari Endpoint JSON di Django
- Menggunakan FutureBuilder di Flutter untuk menampilkan data yang diambil dari server Django menggunakan API.
- Memanggil API untuk mengambil data item dengan menggunakan http.get dan kemudian mengonversi respons JSON ke dalam model ProductEntry yang sudah dibuat.
- Setiap product ditampilkan dengan atribut pada halaman daftar.

7. Membuat Halaman Detail untuk Setiap Item pada Halaman Daftar Item
- Ketika item pada halaman daftar ditekan, mengarahkan pengguna ke halaman detail menggunakan Navigator.push().
- Di halaman detail, ditampilkan semua atribut product

### SOAL
**Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?**
Membuat model untuk mengelola data JSON sangat dianjurkan karena membantu dalam validasi data, mengurangi kesalahan pengkodean, memudahkan pemeliharaan dan pembaruan kode, serta memanfaatkan fitur seperti autocomplete dan intellisense. Meskipun tidak selalu menyebabkan error, tidak menggunakan model dapat meningkatkan risiko kesalahan runtime dan membuat kode lebih sulit untuk dikelola. Oleh karena itu, penggunaan model sangat disarankan untuk efisiensi dan keamanan dalam pengembangan perangkat lunak.

**Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini**
Library http digunakan untuk melakukan komunikasi dengan server melalui protokol HTTP. Fungsi utamanya meliputi pengambilan data (GET), pengiriman data (POST), serta pengelolaan respons dari server. Library ini mempermudah integrasi antara Flutter dan backend seperti Django dalam pertukaran data.

**Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter**
`CookieRequest` dalam konteks pengembangan aplikasi, khususnya yang menggunakan Flutter, biasanya merujuk pada mekanisme untuk mengelola cookie dalam permintaan HTTP. Fungsi utamanya adalah untuk menyimpan dan mengirimkan informasi seperti sesi pengguna atau preferensi di antara permintaan HTTP ke server. Membagikan instance `CookieRequest` ke semua komponen di aplikasi Flutter penting karena memungkinkan pengelolaan state sesi yang konsisten di seluruh aplikasi, memastikan bahwa setiap komponen yang membuat permintaan ke server dapat secara otomatis menyertakan data cookie yang relevan. Ini membantu dalam autentikasi pengguna, mempertahankan preferensi, dan menyediakan pengalaman pengguna yang lebih kohesif.

**Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.**
1. **Input Data**: Proses dimulai ketika pengguna memasukkan data melalui widget input seperti `TextField`. Pengguna memasukkan data yang kemudian disimpan dalam state aplikasi atau dikirim langsung untuk diproses.

2. **Pengelolaan State**: Flutter menggunakan konsep state untuk mengelola data. State ini bisa dikelola secara lokal dalam widget menggunakan `StatefulWidget`, atau menggunakan provider state management seperti `Provider`, `Bloc`, atau `Riverpod`. Data input tersebut dikelola dan di-update dalam state sesuai dengan interaksi pengguna.

3. **Pengiriman Data**: Setelah data diinput dan diolah, data tersebut seringkali perlu dikirim ke server atau database eksternal. Ini biasanya dilakukan menggunakan HTTP request. Flutter menyediakan paket seperti `http` untuk membuat permintaan HTTP. Data yang diinput oleh pengguna dikirim sebagai bagian dari body request (biasanya dalam format JSON).

4. **Penerimaan dan Pengolahan Data**: Server menerima data, memprosesnya sesuai dengan logika bisnis yang didefinisikan (misalnya, menyimpan data ke database), dan kemudian mengirimkan respons kembali ke aplikasi Flutter. Respons ini bisa berupa konfirmasi, data baru yang dihasilkan, atau update dari server.

5. **Deserialisasi dan Update UI**: Setelah aplikasi Flutter menerima respons dari server, data tersebut biasanya perlu di-deserialisasi dari format JSON ke model data dalam Dart. Setelah deserialisasi, aplikasi akan memperbarui UI berdasarkan data baru yang diterima. Ini bisa melibatkan pembaruan state yang akan memicu rebuild widget atau update UI secara langsung.

6. **Tampilan pada UI**: Akhirnya, data yang telah diproses dan dikelola ditampilkan pada UI menggunakan widget Flutter. Data bisa ditampilkan dalam berbagai bentuk seperti teks, daftar, grafik, dll.

**Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter**
Mekanisme autentikasi yang melibatkan aplikasi Flutter sebagai frontend dan Django sebagai backend biasanya mengikuti langkah-langkah berikut:

1. Registrasi Pengguna
- **Input Data**: Dalam aplikasi Flutter, pengguna mengisi form registrasi dengan detail seperti email, username, dan password.
- **Pengiriman Data**: Data tersebut dikirim ke server Django menggunakan HTTP POST request, biasanya melalui API endpoint seperti `/api/register/`.
- **Pengolahan di Django**: Django menerima data, memvalidasi input, dan menyimpan data pengguna baru di database. Django juga bisa mengatur mekanisme seperti konfirmasi email.
- **Respons ke Flutter**: Setelah berhasil, Django mengirim respons ke Flutter, yang bisa berupa status berhasil atau pesan error jika ada masalah.

2. Login Pengguna
- **Input Data**: Pengguna memasukkan kredensial login (username dan password) di Flutter.
- **Pengiriman Data**: Flutter mengirimkan data ini ke Django melalui HTTP POST request ke endpoint seperti `/api/login/`.
- **Autentikasi di Django**: Django memproses permintaan, memverifikasi kredensial dengan data yang tersimpan di database. Jika berhasil, Django menghasilkan token (misalnya JWT) dan mengirimkannya kembali ke Flutter.
- **Set Token di Flutter**: Flutter menerima token dan menyimpannya, biasanya di local storage atau secure storage, untuk digunakan dalam autentikasi API selanjutnya.

3. Akses Konten yang Terproteksi
- **Pengiriman Request dengan Token**: Setiap kali Flutter perlu mengakses data yang terproteksi, ia mengirimkan token autentikasi dalam header request.
- **Validasi Token di Django**: Django memvalidasi token pada setiap request terproteksi. Jika token valid, Django memproses request dan mengirimkan data yang diminta.
- **Update UI di Flutter**: Data yang diterima dari Django digunakan untuk memperbarui UI, menampilkan informasi yang relevan kepada pengguna.

4. Logout
- **Aksi Logout di Flutter**: Pengguna memilih untuk logout, dan Flutter menghapus token dari storage.
- **Pengiriman Notifikasi ke Django**: Flutter bisa secara opsional memberitahu Django tentang logout untuk memungkinkan server melakukan tindakan seperti membatalkan token.
- **Update UI**: Flutter mengembalikan pengguna ke layar login atau halaman awal, menghapus semua sesi atau data pengguna yang tersimpan di state.
