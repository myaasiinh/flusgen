import 'dart:io';

/// Creates a file with optional content.
void createFile(String path, [String content = '']) {
  final file = File(path);

  // Check if the file already exists
  if (!file.existsSync()) {
    // Create the file and write the initial content
    file.createSync(recursive: true);
    if (content.isNotEmpty) {
      file.writeAsStringSync(content);
    }
    print('File created: $path');
  } else {
    print('File already exists: $path');
  }
}

/// Generates files from a map structure with optional content for each file.
void generateFiles(Map<String, dynamic> structure, String basePath) {
  structure.forEach((key, value) {
    final path = '$basePath/$key';

    if (value is Map<String, dynamic>) {
      // Recursively generate files for nested folders
      Directory(path).createSync(recursive: true);
      generateFiles(value, path);
    } else if (value is List<String>) {
      // Create files for the current folder
      value.forEach((fileName) {
        createFile('$path/$fileName');
      });
    }
  });
}
