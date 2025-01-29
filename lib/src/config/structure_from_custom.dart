import 'dart:io';

void generateStructureFromFile(String filePath, String basePath) {
  final file = File(filePath);

  if (!file.existsSync()) {
    print('Error: File not found: $filePath');
    return;
  }

  final lines = file.readAsLinesSync();
  for (final line in lines) {
    final trimmedLine = line.trim();
    
    if (trimmedLine.isEmpty) continue; // Skip baris kosong
    
    final fullPath = '$basePath/$trimmedLine';

    if (trimmedLine.endsWith('/')) {
      // If it's a folder, create it
      final folderPath = fullPath;  // Ensuring proper folder path
      if (!Directory(folderPath).existsSync()) {
        Directory(folderPath).createSync();
        print('Custom folder created: $folderPath');
      }
    } else {
      // If it's a file, create it
      final filePath = fullPath; // Ensuring proper file path
      if (!File(filePath).existsSync()) {
        File(filePath).createSync(recursive: true);
        print('Custom file created: $filePath');
      }
    }
  }

  print('Custom structure generated successfully from $filePath!');
}
