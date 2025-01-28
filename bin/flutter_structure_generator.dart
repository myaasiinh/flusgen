import 'dart:io';
import 'package:flutter_structure_generator/src/config/structure_config.dart';
import 'package:flutter_structure_generator/src/generators/file_generator.dart';
import 'package:flutter_structure_generator/src/generators/folder_generator.dart';

/// Entry point program.
void main(List<String> arguments) {
  final basePath = Directory.current.path;

  if (arguments.isEmpty) {
    print('Usage: Provide a command (e.g., generate-structure, create-custom-folder, rename-folder, delete-folder, create-custom-file, rename-file, delete-file).');
    return;
  }

  final command = arguments[0];

  switch (command) {
    case 'generate-structure':
      print('Generating default structure...');
      createFolders(defaultStructure, basePath);
      print('Structure generated successfully at $basePath!');
      break;

    case 'create-custom-folder':
      if (arguments.length < 2) {
        print('Usage: create-custom-folder <folderPath>');
        return;
      }
      createCustomFolder(arguments[1]);
      break;

    case 'rename-folder':
      if (arguments.length < 3) {
        print('Usage: rename-folder <oldPath> <newPath>');
        return;
      }
      renameFolder(arguments[1], arguments[2]);
      break;

    case 'delete-folder':
      if (arguments.length < 2) {
        print('Usage: delete-folder <folderPath>');
        return;
      }
      deleteFolder(arguments[1]);
      break;

    case 'create-custom-file':
      if (arguments.length < 2) {
        print('Usage: create-custom-file <filePath> [content]');
        return;
      }
      final filePath = arguments[1];
      final content = arguments.length > 2 ? arguments.sublist(2).join(' ') : '';
      createCustomFile(filePath, content);
      break;

    case 'rename-file':
      if (arguments.length < 3) {
        print('Usage: rename-file <oldPath> <newPath>');
        return;
      }
      renameFile(arguments[1], arguments[2]);
      break;

    case 'delete-file':
      if (arguments.length < 2) {
        print('Usage: delete-file <filePath>');
        return;
      }
      deleteFile(arguments[1]);
      break;

    default:
      print('Unknown command: $command');
      print('Available commands: generate-structure, create-custom-folder, rename-folder, delete-folder, create-custom-file, rename-file, delete-file');
      break;
  }
}