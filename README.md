# FlusGen  

`flusgen` is a tool that helps you automatically generate folder and file structures for Flutter projects using the MVVM (Model-View-ViewModel) architecture pattern or Other. With this tool, you can quickly create predefined folders and files, as well as perform operations such as creating custom folders/files, renaming them, and deleting them.  

---  

# Screenshoot Flusgen

![Image](https://github.com/user-attachments/assets/7dcdab25-658c-4b95-a07b-04451d6970f3)

---  

# Demo Test Flusgen

https://github.com/user-attachments/assets/c958ade2-50fc-4c3e-8df6-9b73591b4a86

---  

## 📌 **Project Description**  

This project is designed to simplify the setup of folder and file structures in Flutter projects. Using this tool, you can generate consistent folder and file structures following a specific architecture pattern (such as MVVM or Other). Additionally, you can customize the existing structure by adding, renaming, or deleting folders and files.  

---  

### ✨ **Key Features**  
- ✅ **Generate Structure**: Automatically create a default folder and file structure based on predefined templates.  
- ✅ **Generate from File**: Create a custom folder and file structure based on a `.json` file.  
- ✅ **Create Custom Folder**: Add custom folders after generating the default structure.  
- ✅ **Rename Folder**: Rename existing folders within the project structure.  
- ✅ **Delete Folder**: Remove folders from the project structure.  
- ✅ **Create Custom File**: Add custom files within the project structure.  
- ✅ **Rename File**: Rename existing files within the project structure.  
- ✅ **Delete File**: Remove files from the project structure.
---  

## 🚀 **Installation**  

### **1️⃣ Install FlusGen**  
Run the following command in **Command Prompt (CMD)** to activate the package:  
```bash
dart pub global activate flusgen
```  

---  

### **2️⃣ Configure PATH**  
To run commands globally, add the following directory to your `PATH` environment variable:  
```
C:\Users\myaasiinh\AppData\Local\Pub\Cache\bin
```  

#### **Steps to Add PATH on Windows**  
1. **Open Environment Variables:**  
   - Press `Win + S` and search for **"Environment Variables"**.  
   - Click **Edit the system environment variables**.  
   - In the **System Properties** window, click **Environment Variables**.  

2. **Add PATH:**  
   - Under **System Variables**, find the variable named `Path` and click **Edit**.  
   - Click **New**, then enter:  
     ```plaintext
     C:\Users\myaasiinh\AppData\Local\Pub\Cache\bin
     ```  
   - Click **OK** to save changes.  

3. **Restart Terminal or IDE:**  
   - Close the terminal (Command Prompt, PowerShell, or VS Code terminal) and reopen it to apply the configuration.  

---  

## 🛠 **Available Commands**  

### **🔹 1. Generate Default Structure**  
Generates the default folder and file structure:  
```bash
flusgen generate-structure
```  

### **🔹 2. Create Custom Folder**  
Creates a custom folder after the default structure (Replace `<folderPath>` with the desired folder path):  
```bash
flusgen create-custom-folder <folderPath>
```  
📌 **Example:**  
```bash
flusgen create-custom-folder lib/features/authentication
```  

### **🔹 3. Rename Folder**  
Renames an existing folder:  
```bash
flusgen rename-folder <oldPath> <newPath>
```  
📌 **Example:**  
```bash
flusgen rename-folder lib/features/authentication lib/features/login
```  

### **🔹 4. Delete Folder**  
Removes a folder from the project structure:  
```bash
flusgen delete-folder <folderPath>
```  
📌 **Example:**  
```bash
flusgen delete-folder lib/features/login
```  

### **🔹 5. Create Custom File**  
Creates a custom file inside a specific folder:  
```bash
flusgen create-custom-file <filePath> [content]
```  
📌 **Example:**  
```bash
flusgen create-custom-file lib/features/authentication/auth_service.dart
```  

### **🔹 6. Rename File**  
Renames a file within the project structure:  
```bash
flusgen rename-file <oldPath> <newPath>
```  
📌 **Example:**  
```bash
flusgen rename-file lib/features/authentication/auth_service.dart lib/features/authentication/login_service.dart
```  

### **🔹 7. Delete File**  
Deletes a file from the project structure:  
```bash
flusgen delete-file <filePath>
```  
📌 **Example:**  
```bash
flusgen delete-file lib/features/authentication/auth_service.dart
```  

### **🔹 8. Generate Structure from a File**  
Generates a folder and file structure based on a `.json` file, allowing for customization without relying on built-in templates.  
```bash
flusgen generate-structure-from-json <filePath>
```  
📌 **Example:**  
```bash
flusgen generate-structure-from-json structure.json lib
```  

#### **📄 File Format (`.json`)**  
```
{
  "lib": {
    "core": {
      "config": ["main_app.dart"],
      "global_component": ["global_widget.dart"],
      "constants": ["string.dart", "color.dart", "images.dart"],
      "utils": ["route_utils.dart"]
    },
    "data": {
      "data1": {
        "requests_model": ["data1_requests_model.dart"],
        "responses_model": ["data1_responses_model.dart"],
        "datasource": ["data1_data_source.dart"],
        "repository": ["data1_repository.dart"],
        "viewdatamodel": ["data1_view_datamodel.dart"]
      }
    },
    "features": {
      "features1": {
        "": ["features_screen.dart"],
        "widget": ["features1_widget.dart"],
        "controller": ["features_controller.dart"]
      }
    }
  }
}
```  

---  

## 🎯 **Use Cases**  

### ✅ **1. Generate Default Structure**  
Create a default folder and file structure:  
```bash
flusgen generate-structure
```  

### ✅ **2. Create Custom Folder**  
Add a custom folder to the generated structure:  
```bash
flusgen create-custom-folder lib/features/authentication
```  

### ✅ **3. Rename Folder**  
Rename the `authentication` folder to `login`:  
```bash
flusgen rename-folder lib/features/authentication lib/features/login
```  

### ✅ **4. Delete Folder**  
Remove an unnecessary folder:  
```bash
flusgen delete-folder lib/features/login
```  

### ✅ **5. Create Custom File**  
Add a custom file to the project structure:  
```bash
flusgen create-custom-file lib/features/authentication/auth_service.dart
```  

### ✅ **6. Rename File**  
Rename `auth_service.dart` to `login_service.dart`:  
```bash
flusgen rename-file lib/features/authentication/auth_service.dart lib/features/authentication/login_service.dart
```  

### ✅ **7. Delete File**  
Remove an unused file:  
```bash
flusgen delete-file lib/features/authentication/auth_service.dart
```  

### ✅ **8. Generate Structure from a File**  
Generate a custom folder and file structure from a `.json` file:  
```bash
flusgen generate-structure-from-json structure.json lib
```

---  

## 🤝 **Contributing**  
If you would like to contribute to this project, feel free to submit a **pull request**. Follow these steps:  

1. **Fork this repository.**  
2. Create a **new branch** for your changes.  
3. Make your changes and ensure your code runs properly.  
4. Submit a **pull request** to merge your changes.  

---  

## 📜 **License**  
This project is licensed under the [MIT License](LICENSE).  

---  

**🎉 Enjoy using `flusgen`! If you have any questions, feel free to ask! 🚀**  

---  

### 🚧 Maintainer  

[![GitHub](https://img.shields.io/badge/GitHub-Profile-blue?style=flat-square&logo=github)](https://myaasiinh.github.io)  
[![Ko-fi](https://img.shields.io/badge/Ko--fi-Support-orange?style=flat-square&logo=ko-fi)](https://ko-fi.com/myaasiinh)  
