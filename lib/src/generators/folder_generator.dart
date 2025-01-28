import 'dart:io';

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
