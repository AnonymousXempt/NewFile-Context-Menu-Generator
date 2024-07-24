# NewFile Context Menu Generator
![Image](https://github.com/user-attachments/assets/f20e5a8e-57eb-42f7-b201-6f5f94e48639)

## Overview

The **NewFile Context Menu Generator** is a PowerShell script designed to integrate a custom 'New File' option into the Windows Explorer right-click context menu. This functionality allows users to swiftly create new files with specified extensions directly from the context menu in any directory.

## Features

- Custom File Extension Input: Users can specify any file extension to create new files with their desired format.
- Quick Access: Easily accessible from the right-click context menu in Windows Explorer for convenient file creation.
- Create File in Current Directory: Instantly generate new files in the directory where the context menu is accessed.

## Contents

- `NewFileContextMenuGenerator.ps1`: The automatic installer script.
- `NewFile.bat`: Script for creating new files.
- `NewFile.reg`: Registry file to add the script to the context menu.

## Installation

### Automatic

To install automatically, execute the following command in PowerShell:

```
iwr -useb "https://raw.githubusercontent.com/AnonymousXempt/NewFile-Context-Menu-Generator/main/ContextMod.ps1" | iex;
```
### Manual

1. Download the repository from [GitHub](https://github.com/AnonymousXempt/NewFile-Context-Menu-Generator/archive/refs/heads/main.zip).
2. Extract the contents of the ZIP file.
3. Run the `NewFile.reg` file to add the script to the context menu.
4. Move `NewFile.bat` to `C:\NewFile.bat`.

## Running the Script

After installation, right-click in any directory where the context menu is accessible and select the 'NewFile' option to create a new file.

## Demonstration

### Installation
https://github.com/user-attachments/assets/72e2f765-ae5c-46a8-89b3-b0f6e97ecdf7

### Uninstallation
https://github.com/user-attachments/assets/7f774783-1257-456b-9620-c93c4622daba

## Warnings

This script is safe to use. However, modification of the script may cause harm to the computer. Only change the script if you are familiar with PowerShell and Windows Registry operations.

## Uninstallation

To uninstall, launch Command Prompt as an administrator and run the following commands:

```
reg delete "HKCR\Directory\Background\shell\NewFile" /f
del "C:\NewFile.bat"
```

## License

This software is licensed under the MIT License. See the [license file](https://github.com/AnonymousXempt/NewFile-Context-Menu-Generator/blob/main/LICENSE) for details.
