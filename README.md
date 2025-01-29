# Flutter Structure Generator

`flutter_structure_generator` adalah alat yang membantu Anda membuat struktur folder dan file secara otomatis untuk proyek Flutter dengan pola arsitektur MVVM (Model-View-ViewModel). Dengan menggunakan alat ini, Anda dapat dengan cepat menghasilkan folder dan file sesuai dengan struktur yang telah ditentukan, serta melakukan operasi seperti membuat folder/file kustom, mengganti nama folder/file, dan menghapusnya.

---

## 📌 **Deskripsi Proyek**

Proyek ini dirancang untuk memudahkan pengaturan struktur folder dan file dalam proyek Flutter. Dengan menggunakan alat ini, Anda dapat menghasilkan struktur folder dan file yang konsisten dan mengikuti pola arsitektur tertentu (seperti MVVM). Selain itu, Anda dapat melakukan kustomisasi terhadap struktur yang sudah ada dengan menambah, mengganti nama, atau menghapus folder dan file.

---

## ✨ **Fitur Utama**
- ✅ **Generate Structure**: Membuat struktur folder dan file default sesuai dengan template yang telah ditentukan.
- ✅ **Create Custom Folder**: Membuat folder kustom setelah struktur default.
- ✅ **Rename Folder**: Mengganti nama folder di dalam struktur proyek.
- ✅ **Delete Folder**: Menghapus folder dalam struktur proyek.
- ✅ **Create Custom File**: Membuat file kustom setelah struktur default.
- ✅ **Rename File**: Mengganti nama file dalam struktur proyek.
- ✅ **Delete File**: Menghapus file dalam struktur proyek.

---

## 🚀 **Instalasi**

### **1️⃣ Install Flutter Structure Generator**
Jalankan perintah berikut di **Command Prompt (CMD)** untuk mengaktifkan package:

```bash
dart pub global activate flutter_structure_generator
```

---

### **2️⃣ Konfigurasi PATH**
Agar perintah dapat dijalankan secara global, tambahkan direktori berikut ke dalam `PATH` environment variable Anda:

```
C:\Users\myaasiinh\AppData\Local\Pub\Cache\bin
```

#### **Langkah-langkah Menambahkan PATH di Windows**
1. **Buka Environment Variables:**
   - Tekan `Win + S` dan cari **"Environment Variables"**.
   - Klik **Edit the system environment variables**.
   - Pada jendela **System Properties**, klik tombol **Environment Variables**.

2. **Tambahkan PATH:**
   - Pada bagian **System Variables**, cari variabel bernama `Path`, lalu klik **Edit**.
   - Klik tombol **New**, lalu masukkan:
     ```plaintext
     C:\Users\myaasiinh\AppData\Local\Pub\Cache\bin
     ```
   - Klik **OK** untuk menyimpan perubahan.

3. **Restart Terminal atau IDE:**
   - Tutup terminal (Command Prompt, PowerShell, atau terminal di VS Code) dan buka kembali agar konfigurasi diterapkan.

---

## 🛠 **Perintah yang Tersedia**
Berikut adalah daftar perintah yang dapat digunakan:

### **🔹 1. Generate Struktur Default**
Membuat struktur folder dan file default:
```bash
flutter_structure_generator generate-structure
```

### **🔹 2. Buat Folder Kustom**
Membuat folder kustom setelah struktur default (Gantilah `<folderPath>` dengan path folder yang ingin dibuat):
```bash
flutter_structure_generator create-custom-folder <folderPath>
```
📌 **Contoh:**
```bash
flutter_structure_generator create-custom-folder lib/features/authentication
```

### **🔹 3. Ganti Nama Folder**
Mengganti nama folder yang sudah ada:
```bash
flutter_structure_generator rename-folder <oldPath> <newPath>
```
📌 **Contoh:**
```bash
flutter_structure_generator rename-folder lib/features/authentication lib/features/login
```

### **🔹 4. Hapus Folder**
Menghapus folder dari struktur proyek:
```bash
flutter_structure_generator delete-folder <folderPath>
```
📌 **Contoh:**
```bash
flutter_structure_generator delete-folder lib/features/login
```

### **🔹 5. Buat File Kustom**
Membuat file kustom di dalam folder tertentu:
```bash
flutter_structure_generator create-custom-file <filePath> [content]
```
📌 **Contoh:**
```bash
flutter_structure_generator create-custom-file lib/features/authentication/auth_service.dart
```

### **🔹 6. Ganti Nama File**
Mengganti nama file dalam struktur proyek:
```bash
flutter_structure_generator rename-file <oldPath> <newPath>
```
📌 **Contoh:**
```bash
flutter_structure_generator rename-file lib/features/authentication/auth_service.dart lib/features/authentication/login_service.dart
```

### **🔹 7. Hapus File**
Menghapus file dari struktur proyek:
```bash
flutter_structure_generator delete-file <filePath>
```
📌 **Contoh:**
```bash
flutter_structure_generator delete-file lib/features/authentication/auth_service.dart
```

---

## 🎯 **Use Cases**

### ✅ **1. Generate Default Structure**
Untuk menghasilkan struktur folder dan file default:
```bash
flutter_structure_generator generate-structure
```

### ✅ **2. Create Custom Folder**
Menambahkan folder kustom ke dalam struktur yang telah dibuat:
```bash
flutter_structure_generator create-custom-folder lib/features/authentication
```

### ✅ **3. Rename Folder**
Mengganti nama folder dari `authentication` menjadi `login`:
```bash
flutter_structure_generator rename-folder lib/features/authentication lib/features/login
```

### ✅ **4. Delete Folder**
Menghapus folder yang tidak diperlukan:
```bash
flutter_structure_generator delete-folder lib/features/login
```

### ✅ **5. Create Custom File**
Membuat file kustom dalam struktur proyek:
```bash
flutter_structure_generator create-custom-file lib/features/authentication/auth_service.dart
```

### ✅ **6. Rename File**
Mengganti nama file `auth_service.dart` menjadi `login_service.dart`:
```bash
flutter_structure_generator rename-file lib/features/authentication/auth_service.dart lib/features/authentication/login_service.dart
```

### ✅ **7. Delete File**
Menghapus file yang sudah tidak dibutuhkan:
```bash
flutter_structure_generator delete-file lib/features/authentication/auth_service.dart
```

---

## 🤝 **Kontribusi**
Jika Anda ingin berkontribusi pada proyek ini, silakan buat **pull request**. Berikut adalah langkah-langkahnya:

1. **Fork repository** ini.
2. Buat **branch baru** untuk perubahan Anda.
3. Lakukan perubahan dan pastikan kode Anda berjalan dengan baik.
4. Kirim **pull request** untuk menggabungkan perubahan Anda.

---

## 📜 **Lisensi**
Proyek ini dilisensikan di bawah [MIT License](LICENSE).

---

**🎉 Selamat menggunakan `flutter_structure_generator`! Jika ada pertanyaan, jangan ragu untuk bertanya! 🚀**