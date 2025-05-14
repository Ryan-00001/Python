Python and auto-py-to-exe Installation Scripts
This repository contains batch scripts that automate the installation of Python and the auto-py-to-exe tool, as well as a simple shortcut to launch the auto-py-to-exe GUI. The scripts are designed to make setting up Python development environments and converting Python scripts into executable files easier.

Scripts Overview
1. Install Python and auto-py-to-exe
Script: install_python_and_auto_py_to_exe.bat

This batch script helps you install Python (multiple versions) and the auto-py-to-exe tool on a Windows machine. It includes an interactive menu for selecting Python versions, downloading them, and verifying the installation.

Key Features:
Admin Privileges Check: The script checks if it's run as an administrator. If not, it will automatically elevate privileges using PowerShell.

Interactive Menu:

Option 1: Install Python (multiple versions to choose from).

Option 2: Install auto-py-to-exe and its dependencies.

Option 0: Exit the script.

Python Installation: Allows you to install one of the following Python versions:

Python 3.7.9

Python 3.8.10

Python 3.9.13

Python 3.10.11

Python 3.11.9

Python 3.12.2

auto-py-to-exe Installation: Installs auto-py-to-exe through pip and makes it available to convert Python scripts into executable files.

2. Shortcut to Open auto-py-to-exe GUI
Script: open_auto_py_to_exe.bat

This simple batch script is used to open the auto-py-to-exe graphical user interface (GUI), allowing you to easily convert Python scripts into Windows executable files.

Key Features:
Easy Access: Double-click to launch the auto-py-to-exe GUI for creating .exe files from Python scripts.

Requirements:

Python must be installed and added to the system PATH.

auto-py-to-exe should be installed using the command:

、、、
pip install auto-py-to-exe
、、、

How to Use the Scripts
1. Install Python and auto-py-to-exe
Download or clone the repository.

Double-click install_python_and_auto_py_to_exe.bat.

Follow the on-screen prompts to:

Select the Python version to install.

Download and install the selected Python version.

Install auto-py-to-exe through pip.

Once completed, you can confirm the installation by typing python --version in the command prompt to check the Python version and ensure the setup is correct.

2. Open auto-py-to-exe GUI
Double-click open_auto_py_to_exe.bat to launch the auto-py-to-exe graphical interface.

Use the GUI to convert your Python scripts into .exe executables by following the on-screen instructions.

Additional Information
Python Installation:

The script supports multiple versions of Python and downloads the version of your choice from the official Python website.

It also installs Python silently, adds it to the system PATH, and skips unnecessary components.

After installation, it validates Python by checking the installed version using python --version.

auto-py-to-exe Installation:

The script ensures pip is available and up-to-date.

It installs auto-py-to-exe, which can then be used to convert Python scripts to standalone executable files for Windows.

Troubleshooting
If you encounter any issues during installation:

Ensure that you have administrator privileges, especially for installing Python.

Check if your internet connection is stable during the download process for Python.

If you face issues with auto-py-to-exe, ensure Python and pip are correctly installed and accessible.

