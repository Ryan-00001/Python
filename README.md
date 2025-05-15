# 🐍 Python & auto-py-to-exe Installation Automation Scripts ⚙️

> **Languages | 語言選擇:**  
> 🇺🇸 English | 🇹🇼 [繁體中文](./README.zh-TW.md)

Welcome! 👋 This repository provides a set of **batch scripts** for Windows users to **automatically install Python**, set up the `auto-py-to-exe` tool, and **easily launch** its graphical user interface (GUI). If you're looking to convert your Python scripts into `.exe` files without manually configuring your environment every time, this is for you!

---

## 📜 Script Overview

### 1️⃣ `install_python_and_auto_py_to_exe.bat`  
An interactive batch file to:
- Install **multiple Python versions** from official sources
- Configure **system PATH** automatically
- Install **pip** and the **auto-py-to-exe** tool via pip

#### 🔍 Features:
- 🔐 **Administrator Privilege Detection**: Automatically elevates the script using PowerShell if not run as admin.
- 📋 **Interactive Menu Interface**:
  - [1] Install Python (choose from supported versions)
  - [2] Install auto-py-to-exe via pip
  - [0] Exit
- 🐍 **Supported Python Versions**:
  - Python 3.7.9  
  - Python 3.8.10  
  - Python 3.9.13  
  - Python 3.10.11  
  - Python 3.11.9  
  - Python 3.12.2
- 🔧 Automatically:
  - Downloads official Python installer
  - Silently installs Python
  - Adds Python and pip to system PATH
  - Validates installation with `python --version`

### 2️⃣ `open_auto_py_to_exe.bat`  
A simple launcher to open the GUI for `auto-py-to-exe`.

#### 🧰 Prerequisites:
- Python must be installed and available in PATH
- Run `pip install auto-py-to-exe` (can be handled by the first script)

---

## ▶️ How to Use These Scripts

### Step-by-step Instructions:

1. 🧩 **Download or clone this repository** to your local machine
2. 🖱 **Double-click `install_python_and_auto_py_to_exe.bat`**
   - Choose your desired Python version from the menu
   - Confirm to install `auto-py-to-exe`
   - Script automatically checks installation success
3. 🚀 **Launch the GUI** by double-clicking `open_auto_py_to_exe.bat`
   - You can now use the GUI to package your `.py` scripts as `.exe` files!

---

## 🧯 Troubleshooting

- ❗ **Permission Denied**: Make sure to run the `.bat` file as administrator.
- 🌐 **Download Issues**: Ensure your internet connection is active and not behind strict firewalls.
- ⚙️ **PATH Issues**: If `python` or `pip` commands are not recognized, you may need to restart the terminal or manually add them to system PATH.
- 🛠 **Manual Install Option** (if auto script fails):
  ```sh
  pip install auto-py-to-exe
  auto-py-to-exe
  ```

---

## 📁 File List

| File Name | Description |
|-----------|-------------|
| `install_python_and_auto_py_to_exe.bat` | Main setup script |
| `open_auto_py_to_exe.bat` | GUI launcher |
| `README.md` | English guide |
| `README.zh-TW.md` | Traditional Chinese guide |

---

## 👋 Credits
Created for developers who want a quick, hassle-free way to convert Python scripts into executables!

🇹🇼 [繁體中文說明 (README.zh-TW.md)](./README.zh-TW.md)
