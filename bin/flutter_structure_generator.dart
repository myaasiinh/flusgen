import 'dart:io';
import 'package:flutter_structure_generator/src/config/structure_config.dart';
import 'package:flutter_structure_generator/src/generators/folder_generator.dart';

void main(List<String> arguments) {
  final basePath = Directory.current.path;

  print('Generating default structure...');
  createFolders(defaultStructure, basePath);
  print('Structure generated successfully at $basePath!');
}
