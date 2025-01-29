import 'dart:convert';
import 'dart:io';

void generateStructureFromJson(String jsonFilePath, String basePath) {
  final file = File(jsonFilePath);

  if (!file.existsSync()) {
    print('Error: File not found: $jsonFilePath');
    return;
  }

  final jsonString = file.readAsStringSync();
  final Map<String, dynamic> structure = jsonDecode(jsonString);  // Decode the JSON into a Map

  // Start recursive function to create the structure
  createStructure(structure, basePath);

  print('Custom structure generated successfully from $jsonFilePath!');
}

void createStructure(Map<String, dynamic> structure, String currentPath) {
  structure.forEach((key, value) {
    final newPath = '$currentPath/$key';

    if (value is Map) {
      // If value is a map, it's a folder, create the folder and recurse
      Directory(newPath).createSync(recursive: true);
      print('Folder created: $newPath');
      createStructure(Map<String, dynamic>.from(value), newPath);  // Recurse into the sub-folder
    } else if (value is List) {
      // If value is a list, it's a file, create the files in the folder
      for (var fileName in value) {
        final filePath = '$newPath/$fileName';
        File(filePath).createSync(recursive: true);
        print('File created: $filePath');
      }
    }
  });
}