# README.md - Tugas 7  - counter_7 

Nama: Ahmad Fatahillah

NPM: 2106653741

**Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.**

Semua komponen di dalam Flutter adalah dibentuk dari widget. Terdapat dua jenis widget yakni **Stateless widget** dan **Stateful widget**. Mudahnya, stateless widget merupakan widget yang isinya tidak dapat berubah (statis). Sedangkan stateful widget merupakan widget yang isinya dapat berubah (dinamis).

Perbedaan dari kedua widget tersebut adalah jika memakai stateful widget maka kita dapat untuk memodifikasi isi widget selama aplikasi berjalan, misalnya pada lab minggu lalu dapat meng-*increment* nilai counter dan langsung ditampilkan pada layar aplikasi. Sedangkan menggunakan stateless widget, kita tidak terlalu dapat melakukan banyak hal dengan widget ini karena isi dari stateless widget bersifat statis; apa yang ditulis di awal tidak dapat berubah saat aplikasi dijalankan.


**Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.**

- `MaterialApp`
: Sebuah parent dimana yang diapitnya akan menerapkan style material design

- `Scaffold`
: widget utama untuk membuat sebuah halaman pada flutter

- `FloatingActionButton`
: Untuk membuat sebuah button

- `Column`
: Untuk mempermudah layouting/tata letak

- `Center`
: Menaruh widget di dalamnya berada di tengah/*centered*

- `Text`
: Menampilkan text

- `TextStyle`
: Memberikan *styling* pada text

**Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.**

Fungsi setState() hanya bisa digunakan di dalam stateful widget Fungsi utama dari setState() adalah untuk menginformasikan kepada widget bahwa ada object yang nilainya berubah pada state. Dengan fungsi tersebut akan melakukan *rebuild* pada widget tersebut sehingga aktivitas terakhir dapat tertampilkan dengan baik. Lalu, variabel yang dapat terdampak dengan fungsi setState() adalah semua variabel yang bersifat mutable dan bertipe global pada class tersebut. Variabel yang terdampak pada kali ini adalah variabel `_counter` karena pada program ini dilakukan fungsi `_incrementCounter()` dan `_decrementCounter`.

**Jelaskan perbedaan antara const dengan final.**
`final` dan `const` merupakan *keyword* yang berfungsi sebagai variabel yang bersifat immutable. Perbedaan utama antara keduanya yakni pada inisialisasi nilai. Nilai const harus sudah terinisialisasi saat kompilasi, tetapi nilai final tidak wajib sudah terinisialisasi saat kompilasi


**Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.**

1. Membuat sebuah program flutter baru dengan nama `counter_7`.
2. Menambahkan fungsi `_decrementCounter()` di bawah fungsi increment serta menambahkan logic bahwa hanya dapat berfungsi ketika nilai di dalam counter lebih dari 0.
3. Menambahkan button baru dan diposisikan di kiri bawah sebagai button decrement yang berfungsi mengurangkan nilai.
4. Menambahkan logic pada bagian button decrement bahwa hanya muncul ketika nilai counter lebih dari 0. Jadi ketika `_counter <= 0`, maka akan di-*hide*