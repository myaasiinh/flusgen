import 'dart:io';

/// Fungsi untuk membuat file dengan konten opsional.
void createFile(String path, [String content = '']) {
  final file = File(path);

  if (!file.existsSync()) {
    file.createSync(recursive: true);
    if (content.isNotEmpty) {
      file.writeAsStringSync(content);
    }
    print('File created: $path');
  } else {
    print('File already exists: $path');
  }
}

/// Fungsi untuk membuat file berdasarkan struktur template MVVM.
void generateFiles(Map<String, dynamic> structure, String basePath) {
  structure.forEach((key, value) {
    final path = '$basePath/$key';

    if (value is Map<String, dynamic>) {
      Directory(path).createSync(recursive: true);
      generateFiles(value, path);
    } else if (value is List<String>) {
      value.forEach((fileName) {
        createFile('$path/$fileName');
      });
    }
  });
}

/// Fungsi untuk membuat file kustom di luar struktur template.
void createCustomFile(String filePath, [String content = '']) {
  final file = File(filePath);
  if (!file.existsSync()) {
    file.createSync(recursive: true);
    if (content.isNotEmpty) {
      file.writeAsStringSync(content);
    }
    print('Custom file created: $filePath');
  } else {
    print('Custom file already exists: $filePath');
  }
}

/// Fungsi untuk mengganti nama file di dalam atau di luar struktur template.
void renameFile(String oldPath, String newPath) {
  final file = File(oldPath);
  if (file.existsSync()) {
    file.renameSync(newPath);
    print('File renamed from $oldPath to $newPath');
  } else {
    print('File does not exist: $oldPath');
  }
}

/// Fungsi untuk menghapus file yang tidak diinginkan.
void deleteFile(String filePath) {
  final file = File(filePath);
  if (file.existsSync()) {
    file.deleteSync();
    print('File deleted: $filePath');
  } else {
    print('File does not exist: $filePath');
  }
}