import 'dart:io';
import 'package:flusgen/flusgen.dart';

/// Entry point of the program.
void main(List<String> arguments) {
  final basePath = Directory.current.path;

  if (arguments.isEmpty) {
    print('''
FlusGen - Flutter Project Structure Generator
=============================================
FlusGen is a tool to automatically generate folder and file structures for Flutter projects using the MVVM pattern or other architectures.

Usage:
  flusgen <command> [options]

Commands:
  generate-structure                : Creates the default folder and file structure for a Flutter project.
  generate-structure-from-file <path>: Creates a structure based on the specified JSON file.
  create-custom-folder <path>       : Creates a folder at the given path.
  rename-folder <oldPath> <newPath> : Renames or moves a folder.
  delete-folder <path>              : Deletes the specified folder.
  create-custom-file <path> [content]: Creates a file with optional content.
  rename-file <oldPath> <newPath>   : Renames or moves a file.
  delete-file <path>                : Deletes the specified file.

Example:
  flusgen generate-structure
  flusgen generate-structure-from-file structure.json
  flusgen create-custom-folder lib/modules

Run the command with the appropriate arguments to get started.
''');
    return;
  }

  final command = arguments[0];

  switch (command) {
    case 'generate-structure':
      print('📂 Generating default Flutter project structure...');
      createFolders(defaultStructure, basePath);
      print('✅ Structure generated successfully at $basePath!');
      break;

    case 'generate-structure-from-file':
      if (arguments.length < 2) {
        print('❌ Usage: generate-structure-from-file <filePath>');
        return;
      }
      final filePath = arguments[1];
      print('📂 Generating structure from file: $filePath...');
      generateStructureFromJson(filePath, basePath);
      break;

    case 'create-custom-folder':
      if (arguments.length < 2) {
        print('❌ Usage: create-custom-folder <folderPath>');
        return;
      }
      print('📁 Creating folder: ${arguments[1]}...');
      createCustomFolder(arguments[1]);
      break;

    case 'rename-folder':
      if (arguments.length < 3) {
        print('❌ Usage: rename-folder <oldPath> <newPath>');
        return;
      }
      print('✏️ Renaming folder from ${arguments[1]} to ${arguments[2]}...');
      renameFolder(arguments[1], arguments[2]);
      break;

    case 'delete-folder':
      if (arguments.length < 2) {
        print('❌ Usage: delete-folder <folderPath>');
        return;
      }
      print('🗑️ Deleting folder: ${arguments[1]}...');
      deleteFolder(arguments[1]);
      break;

    case 'create-custom-file':
      if (arguments.length < 2) {
        print('❌ Usage: create-custom-file <filePath> [content]');
        return;
      }
      final filePath = arguments[1];
      final content = arguments.length > 2 ? arguments.sublist(2).join(' ') : '';
      print('📄 Creating file: $filePath...');
      createCustomFile(filePath, content);
      break;

    case 'rename-file':
      if (arguments.length < 3) {
        print('❌ Usage: rename-file <oldPath> <newPath>');
        return;
      }
      print('✏️ Renaming file from ${arguments[1]} to ${arguments[2]}...');
      renameFile(arguments[1], arguments[2]);
      break;

    case 'delete-file':
      if (arguments.length < 2) {
        print('❌ Usage: delete-file <filePath>');
        return;
      }
      print('🗑️ Deleting file: ${arguments[1]}...');
      deleteFile(arguments[1]);
      break;

    default:
      print('''
❌ Unknown command: $command
Available commands:
  generate-structure, generate-structure-from-file, create-custom-folder,
  rename-folder, delete-folder, create-custom-file, rename-file, delete-file.

Use "flusgen <command> [options]" for details.
''');
      break;
  }
}
