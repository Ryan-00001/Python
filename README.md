# 🐍 Python & auto-py-to-exe Installation Automation Scripts ⚙️

> **Languages | 語言選擇:**  
> 🇺🇸 English | 🇹🇼 [繁體中文](./README.zh-TW.md)

This repository provides batch scripts to **automatically install** Python and **auto-py-to-exe**, along with a handy shortcut to launch the GUI. These scripts aim to make it **easier and faster** to set up a Python environment and convert scripts into standalone `.exe` files for Windows.

## 📜 Scripts Overview

### 1️⃣ Install Python and auto-py-to-exe  
**Script:** `install_python_and_auto_py_to_exe.bat`

This script lets you install multiple versions of Python and the `auto-py-to-exe` tool.

**Key Features:**
- 🔐 Checks and elevates to administrator privileges automatically.
- 📋 Interactive menu to:
  - Install selected Python version
  - Install `auto-py-to-exe`
  - Exit
- 🐍 Supported Python versions:
  - 3.7.9, 3.8.10, 3.9.13, 3.10.11, 3.11.9, 3.12.2
- 📦 Installs `auto-py-to-exe` via pip

### 2️⃣ Launch auto-py-to-exe GUI  
**Script:** `open_auto_py_to_exe.bat`

A simple batch script to launch the GUI for converting Python scripts into executables.

**Requirements:**
- Python must be in system PATH
- Run: `pip install auto-py-to-exe`

## ▶️ How to Use

1. **Download or clone this repo**
2. Run `install_python_and_auto_py_to_exe.bat`
   - Choose Python version
   - Install dependencies
3. Launch the GUI using `open_auto_py_to_exe.bat`

## 🧯 Troubleshooting

- 🔐 Run as Administrator
- 🌐 Ensure stable internet during Python download
- ⚙️ Confirm Python and pip are in PATH

---

🇹🇼 [繁體中文說明 (README.zh-TW.md)](./README.zh-TW.md)
