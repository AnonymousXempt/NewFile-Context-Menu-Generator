# NewFile Context Menu Generator

## Overview

The **NewFile Context Menu Generator** is a PowerShell script designed to integrate a custom 'New File' option into the Windows Explorer right-click context menu. This functionality allows users to swiftly create new files with specified extensions directly from the context menu in any directory.

## Features

- **Admin Privilege Check:** The script automatically restarts with elevated (admin) privileges if not already running with them.
- **Custom Context Menu Entry:** Adds a "New File" option to the right-click context menu in Windows Explorer.
- **Batch File Creation:** Prompts the user to enter a file extension and creates a new file with that extension in the selected directory.

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

A video demonstration is available [here](#).

## Warnings

This script is safe to use. However, modify the script only if you are familiar with PowerShell and Windows Registry operations.

## Uninstallation

To uninstall, launch Command Prompt as an administrator and run the following commands:

```
reg delete "HKCR\Directory\Background\shell\NewFile" /f
del "C:\NewFile.bat"
```

## License

This software is licensed under the MIT License. See the [license file] (https://github.com/AnonymousXempt/NewFile-Context-Menu-Generator/blob/main/LICENSE) for details.