import 'dart:io';
import 'package:flusgen/flusgen.dart';

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
    
    if (trimmedLine.endsWith('/')) {
      // Jika diakhiri dengan "/", maka ini adalah folder
      createCustomFolder('$basePath/$trimmedLine');
    } else {
      // Jika tidak, maka ini adalah file
      createCustomFile('$basePath/$trimmedLine', '');
    }
  }

  print('Custom structure generated successfully from $filePath!');
}
