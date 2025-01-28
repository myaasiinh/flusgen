import 'dart:io';

/// Membuat file dengan konten opsional.
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

/// Menghasilkan file berdasarkan struktur folder.
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
