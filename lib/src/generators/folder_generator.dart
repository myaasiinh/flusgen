import 'dart:io';


/// Fungsi untuk membuat folder berdasarkan struktur template MVVM.
void createFolders(Map<String, dynamic> structure, String basePath) {
  structure.forEach((key, value) {
    final path = '$basePath/$key';
    Directory(path).createSync(recursive: true);

    if (value is Map<String, dynamic>) {
      createFolders(value, path);
    } else if (value is List<String>) {
      value.forEach((fileName) {
        File('$path/$fileName').createSync(recursive: true);
      });
    }
  });
}

/// Fungsi untuk menambahkan folder custom setelah struktur awal dibuat.
void createCustomFolder(String folderPath) {
  final directory = Directory(folderPath);
  if (!directory.existsSync()) {
    directory.createSync(recursive: true);
    print('Custom folder created: $folderPath');
  } else {
    print('Custom folder already exists: $folderPath');
  }
}

/// Fungsi untuk mengganti nama folder di dalam struktur template.
void renameFolder(String oldPath, String newPath) {
  final directory = Directory(oldPath);
  if (directory.existsSync()) {
    directory.renameSync(newPath);
    print('Folder renamed from $oldPath to $newPath');
  } else {
    print('Folder does not exist: $oldPath');
  }
}

/// Fungsi untuk menghapus folder yang tidak diinginkan dalam struktur template.
void deleteFolder(String folderPath) {
  final directory = Directory(folderPath);
  if (directory.existsSync()) {
    directory.deleteSync(recursive: true);
    print('Folder deleted: $folderPath');
  } else {
    print('Folder does not exist: $folderPath');
  }
}