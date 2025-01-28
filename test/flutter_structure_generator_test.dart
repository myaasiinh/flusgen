import 'dart:io';
import 'package:flutter_structure_generator/flutter_structure_generator.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Generate structure', () {
    // Create a temporary directory to test in
    final tempDir = Directory.systemTemp.createTempSync();

    // Generate the folder structure
    createFolders(defaultStructure, tempDir.path);

    // Generate files in the created folders
    generateFiles(defaultStructure, tempDir.path);

    // Ensure the folder 'lib/core/config' exists
    expect(Directory('${tempDir.path}/lib/core/config').existsSync(), isTrue);

    // Ensure the file 'main_app.dart' exists
    expect(File('${tempDir.path}/lib/core/config/main_app.dart').existsSync(), isTrue);
  });
}
