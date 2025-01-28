import 'dart:io';

/// Membuat folder jika belum ada.
void createFolderIfNotExists(String folderPath) {
  final directory = Directory(folderPath);

  if (!directory.existsSync()) {
    directory.createSync(recursive: true);
    print('Folder created: $folderPath');
  } else {
    print('Folder already exists: $folderPath');
  }
}

/// Membuat file jika belum ada.
void createFileIfNotExists(String filePath, [String content = '']) {
  final file = File(filePath);

  if (!file.existsSync()) {
    // Membuat file dan menulis konten jika diberikan
    file.createSync(recursive: true);
    if (content.isNotEmpty) {
      file.writeAsStringSync(content);
    }
    print('File created: $filePath');
  } else {
    print('File already exists: $filePath');
  }
}

/// Menghapus file jika ada.
void deleteFileIfExists(String filePath) {
  final file = File(filePath);

  if (file.existsSync()) {
    file.deleteSync();
    print('File deleted: $filePath');
  } else {
    print('File does not exist: $filePath');
  }
}

/// Menghapus folder jika ada.
void deleteFolderIfExists(String folderPath) {
  final directory = Directory(folderPath);

  if (directory.existsSync()) {
    directory.deleteSync(recursive: true);
    print('Folder deleted: $folderPath');
  } else {
    print('Folder does not exist: $folderPath');
  }
}

/// Menampilkan isi folder (untuk debugging).
void listFolderContents(String folderPath) {
  final directory = Directory(folderPath);

  if (directory.existsSync()) {
    final files = directory.listSync(recursive: true);
    print('Contents of $folderPath:');
    for (var file in files) {
      print(file.path);
    }
  } else {
    print('Folder does not exist: $folderPath');
  }
}
