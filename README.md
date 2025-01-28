# Flutter Structure Generator

`flutter_structure_generator` adalah alat yang membantu Anda membuat struktur folder dan file secara otomatis untuk proyek Flutter dengan pola arsitektur MVVM (Model-View-ViewModel). Dengan menggunakan alat ini, Anda dapat dengan cepat menghasilkan folder dan file sesuai dengan struktur yang telah ditentukan, serta melakukan operasi seperti membuat folder/file kustom, mengganti nama folder/file, dan menghapusnya.

## Deskripsi Proyek

Proyek ini dirancang untuk memudahkan pengaturan struktur folder dan file dalam proyek Flutter. Dengan menggunakan alat ini, Anda dapat menghasilkan struktur folder dan file yang konsisten dan mengikuti pola arsitektur tertentu (seperti MVVM). Selain itu, Anda dapat melakukan kustomisasi terhadap struktur yang sudah ada dengan menambah, mengganti nama, atau menghapus folder dan file.

## Fitur Utama

- **Generate Structure**: Membuat struktur folder dan file default sesuai dengan template yang telah ditentukan.
- **Create Custom Folder**: Membuat folder kustom setelah struktur default.
- **Rename Folder**: Mengganti nama folder di dalam struktur proyek.
- **Delete Folder**: Menghapus folder dalam struktur proyek.
- **Create Custom File**: Membuat file kustom setelah struktur default.
- **Rename File**: Mengganti nama file dalam struktur proyek.
- **Delete File**: Menghapus file dalam struktur proyek.

## Instalasi

1. **Clone Repository**  
   Clone repository ini ke komputer lokal Anda:
   ```
   git clone https://github.com/username/flutter_structure_generator.git
   ```

2. **Masuk ke direktori proyek**  
   Pindah ke folder proyek yang telah di-clone:
   ```
   cd flutter_structure_generator
   ```

3. **Aktifkan package menggunakan Flutter**  
   Jalankan perintah untuk mengaktifkan package ini secara global:
   ```
   flutter pub global activate --source path .
   ```

4. **Tambahkan `flutter_structure_generator` ke PATH**  
   Pastikan direktori Pub Cache (`C:\Users\your_username\AppData\Local\Pub\Cache\bin`) sudah ditambahkan ke environment `PATH` di sistem Anda agar dapat menjalankan perintah dari terminal.

## Perintah yang Tersedia

Berikut adalah daftar perintah yang dapat digunakan:

- **generate-structure**  
  Membuat struktur folder dan file default.
  ```bash
  flutter pub global run flutter_structure_generator generate-structure
  ```

- **create-custom-folder**  
  Membuat folder kustom setelah struktur default. Gantilah `<folderPath>` dengan path folder yang ingin dibuat.
  ```
  flutter pub global run flutter_structure_generator create-custom-folder <folderPath>
  ```

- **rename-folder**  
  Mengganti nama folder. Gantilah `<oldPath>` dengan nama folder lama dan `<newPath>` dengan nama folder baru.
  ```
  flutter pub global run flutter_structure_generator rename-folder <oldPath> <newPath>
  ```

- **delete-folder**  
  Menghapus folder dari struktur proyek.
  ```bash
  flutter pub global run flutter_structure_generator delete-folder <folderPath>
  ```

- **create-custom-file**  
  Membuat file kustom. Gantilah `<filePath>` dengan path file yang ingin dibuat, dan Anda bisa menambahkan konten file.
  ```
  flutter pub global run flutter_structure_generator create-custom-file <filePath> [content]
  ```

- **rename-file**  
  Mengganti nama file. Gantilah `<oldPath>` dengan path file lama dan `<newPath>` dengan path file baru.
  ```
  flutter pub global run flutter_structure_generator rename-file <oldPath> <newPath>
  ```

- **delete-file**  
  Menghapus file dari struktur proyek.
  ```
  flutter pub global run flutter_structure_generator delete-file <filePath>
  ```

## Use Cases

### 1. Generate Default Structure
Untuk menghasilkan struktur folder dan file default sesuai dengan template yang sudah ditentukan, Anda dapat menjalankan perintah berikut:
```
flutter pub global run flutter_structure_generator generate-structure
```

### 2. Create Custom Folder
Jika Anda perlu menambahkan folder kustom ke dalam struktur yang telah dibuat, gunakan perintah `create-custom-folder`:
```
flutter pub global run flutter_structure_generator create-custom-folder lib/features/authentication
```
Perintah ini akan membuat folder `authentication` di dalam folder `lib/features/`.

### 3. Rename Folder
Jika Anda ingin mengganti nama folder di dalam struktur proyek, misalnya mengganti nama folder `authentication` menjadi `login`, Anda bisa menggunakan perintah `rename-folder`:
```
flutter pub global run flutter_structure_generator rename-folder lib/features/authentication lib/features/login
```

### 4. Delete Folder
Jika Anda ingin menghapus folder yang tidak diperlukan, gunakan perintah `delete-folder`:
```
flutter pub global run flutter_structure_generator delete-folder lib/features/login
```

### 5. Create Custom File
Untuk membuat file kustom di dalam folder yang sudah ada, gunakan perintah `create-custom-file`:
```
flutter pub global run flutter_structure_generator create-custom-file lib/features/authentication/auth_service.dart
```

### 6. Rename File
Jika Anda ingin mengganti nama file, misalnya mengganti nama `auth_service.dart` menjadi `login_service.dart`, Anda dapat menggunakan perintah `rename-file`:
```
flutter pub global run flutter_structure_generator rename-file lib/features/authentication/auth_service.dart lib/features/authentication/login_service.dart
```

### 7. Delete File
Untuk menghapus file yang sudah tidak dibutuhkan, gunakan perintah `delete-file`:
```
flutter pub global run flutter_structure_generator delete-file lib/features/authentication/auth_service.dart
```

## Kontribusi

Jika Anda ingin berkontribusi pada proyek ini, silakan buat pull request. Berikut adalah langkah-langkah umum untuk berkontribusi:

1. Fork repository ini.
2. Buat branch baru untuk perubahan Anda.
3. Lakukan perubahan dan pastikan bahwa kode Anda berjalan dengan baik.
4. Kirim pull request untuk menggabungkan perubahan Anda.

## Lisensi

Proyek ini dilisensikan di bawah [MIT License](LICENSE).
