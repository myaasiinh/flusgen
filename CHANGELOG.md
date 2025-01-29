## 1.0.0 - Initial release
- Initial release of Flusgen tool to generate folder structure for Flutter projects.

## 1.0.1 - Added support for generating structure from a file
- Introduced `generate-structure-from-file` command to allow users to define folder structures via a `.txt` file.
- Users can now manually specify the structure instead of relying on the default template.
- Improved error handling for file operations (e.g., missing files).

## 1.0.2 - Fix support for generating structure from a file
- Fixed issues with the `generate-structure-from-file` command when handling `.txt` file input.
- Improved handling of edge cases for file paths and structure generation.

## 1.0.4 - Fix Documentation
- Fixed and updated documentation to reflect the features and commands accurately.

## 1.0.5 - Added JSON support for structure generation
- Introduced `generate-structure-from-json` command for generating folder structures from a JSON file.
- Users can now specify the folder structure in JSON format, providing more flexibility for complex structures.
- Improved command handling for JSON-based input and automatic creation of folders and files based on JSON-defined paths.
- Updated documentation to include usage instructions for JSON-based structure generation.
