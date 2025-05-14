
🔧 Script Overview (English Description)
This is a Windows batch script designed to automate the installation of Python and the auto-py-to-exe tool, with a simple interactive menu and administrator privilege elevation.

💡 Features
Automatic Administrator Privilege Check and Elevation

The script checks if it’s running as administrator.

If not, it relaunches itself with admin rights using PowerShell.

Interactive Menu Interface

Presents a command-line menu with the following options:

markdown
複製
編輯
1. Install Python (multiple versions available)
2. Install auto-py-to-exe (and its dependencies)
0. Exit
Python Installation (Multiple Versions)

Allows the user to choose from a list of Python versions:

Python 3.7.9

Python 3.8.10

Python 3.9.13

Python 3.10.11

Python 3.11.9

Python 3.12.2

Downloads the chosen version from the official Python website.

Installs Python silently (/quiet mode), adds it to the system PATH, and skips optional components like the test suite.

Verifies installation by checking python --version.

auto-py-to-exe Installation

Ensures pip is available and up-to-date.

Installs auto-py-to-exe via pip.

Provides confirmation and instructions to launch the GUI using auto-py-to-exe.

📦 Technical Notes
Encoding: Sets the console to UTF-8 (chcp 65001) for proper Unicode support.

Robust Flow Control: Uses delayed variable expansion (setlocal enabledelayedexpansion) and input validation to ensure smooth operation.

Error Handling: If downloads fail or invalid options are selected, the script shows error messages and returns to the appropriate menu.

