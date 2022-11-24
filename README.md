Nama: Ahmad Fatahillah

NPM: 2106653741

# Tugas 7

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya

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

# Tugas 8

## Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`

Navigasi antar page pada flutter cukup berbeda dengan seperti django kemarin yang meletakkan sebuah link pada href tag html. Di flutter, navigasi antar page dilakukan seperti sebuah stack. Misalnya, ketika page A yang sedang dibuka saat ini, lalu selanjutnya berpindah page ke page B, maka page B akan berada di top of stack sehingga page B menimpa page A.

`Navigator.push` adalah sebuah navigator routing yang akan menambahkan page pada top of stack saja, sedangkan

`Navigator.pushReplacement` adalah sebuah navigator routing yang akan menghapus page yang ada di paling atas pada stack, lalu menambahkan page yang akan di routing atau dengan kata lain dia menggantikan page di top of stack sebelumnya menjadi page baru yang akan di routing sehingga top of stack sekarang adalah page baru tersebut

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- MaterialApp, menyediakan style bawaan dari parent
- Scaffold, implementasi dari material untuk struktur layout
- Text, menampilkan text
- TextStyling, memberikan styling pada widget text
- Drawer, sebuah list yang berisikan daftar navigasi
- Card, styling bawaan dari material yang akan membentuk sebuah card
- DropDownButton, menyediakan pilihan input dengan pilihan salah satu saja
- ListView.builder, menampilkan *list of children* 
- Center, memposisikan widget berada di tengah-tengah

## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

- onPressed
- onClick
- onHover
- onChanged
- onSaved

## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
 
Seperti yang sudah dijelaskan pada poin pertanyaan pertama, navigasi di flutter menerapkan logic dari stack. Sehingga cara kerja navigator bekerja dalam mengganti halaman pada aplikasi flutter adalah ketika membuka sebuah page baru maka page tersebut akan di push ke dalam stack, sebaliknya jika kembali/*previous* dari page terkini maka page tersebut akan di-pop dan page yang tertampil adalah page sebelumnya.

## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Membuat drawer sebagai navigasi untuk `tambah_budget` dan `list_budget` pada seluruh page.

2. Membuat class untuk tambah budget dan menampilkan list budget

3. Membuat class `budget.dart` sebagai model dari budget

4. Membuat class tambah budget pada `tambah_budget.dart` yang berisikan form submisi ketika user ingin menambahkan sebuah budget baru

5. Membuat class list budget pada `list_budget.dart` yang berisikan card-card dari budget yang pernah ditambahkan.

# Tugas 9

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

Bisa saja. Akan tetapi lebih baik jika membuat model tersendiri juga karena bagi developer hal tersebut akan membantu pekerjaannya kedepannya karena memiliki chance untuk mengakses dan memodifikasi data tersebut dengan lebih mudah.

## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- FutureBuilder, untuk melakukan fetching data
- ListView.Builder, agar bisa scrollable terhadap list of children
- FloatingActionButton, membuat sebuah button
- RoundedRectangleBorder, membuat sisi-sisi box rounded
- ListTile, membuat list di dalam sebuah widget
- CheckBoxListTile, membuat checkbox
- Card, membuat card
 
## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

1. Menambahkan dependency http terlebih dahulu
2. Membuat model terhadap data yang akan di-fetch
3. Membuat method untuk GET data
4. Memodifikasi data yang telah di GET dalam bentuk model
5. Menampilkan data yang telah berhasil di GET sebelumnya dengan menggunakan `FutureBuilder`.
 
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Melakukan refactor file dengan mengikuti arahan pada lab 8
2. Membuat model yang memanfaatkan JSON pada tugas 3 yakni mywatchlist dengan tools quicktype.
3. Membuat function untuk melakukan fetching data terhadap url json tugas 3.
4. Membuat page untuk menampilkan data mywatchlist serta detail dari setiap watchlist.
5. Menyesuaikan spesifikasi program sesuai dengan soal