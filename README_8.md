# README.md - Tugas 8

Nama: Ahmad Fatahillah

NPM: 2106653741

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
