import 'dart:io';
import 'package:flutter_structure_generator/flutter_structure_generator.dart';

void main(List<String> arguments) {
  final basePath = Directory.current.path;

  print('Generating default structure...');

  // Create folders based on the default structure
  createFolders(defaultStructure, basePath);
  
  // Generate files based on the default structure (optional, if you want to create files too)
  generateFiles(defaultStructure, basePath);

  print('Structure generated successfully at $basePath!');
}
