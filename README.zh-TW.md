# 🐍 Python 與 auto-py-to-exe 自動安裝腳本 ⚙️

這個儲存庫提供了一組批次檔腳本，可用來**自動安裝 Python 與 auto-py-to-exe**，並附有快速捷徑能一鍵啟動 auto-py-to-exe 圖形介面。這些腳本可幫助你**快速搭建 Python 環境**，並將腳本打包成獨立的 Windows 可執行檔（`.exe`）。

## 📜 腳本說明

### 1️⃣ 安裝 Python 和 auto-py-to-exe  
**腳本名稱：** `install_python_and_auto_py_to_exe.bat`

這個腳本提供互動式選單，可協助你選擇要安裝的 Python 版本，並自動安裝 `auto-py-to-exe`。

**功能特色：**
- 🔐 自動偵測並提權為系統管理員執行
- 📋 提供選單選擇：
  - 安裝指定版本的 Python
  - 安裝 `auto-py-to-exe`
  - 離開腳本
- 🐍 支援 Python 版本：
  - 3.7.9、3.8.10、3.9.13、3.10.11、3.11.9、3.12.2
- 📦 透過 pip 安裝 `auto-py-to-exe`

### 2️⃣ 啟動 auto-py-to-exe 圖形介面  
**腳本名稱：** `open_auto_py_to_exe.bat`

此腳本能快速啟動 GUI，協助你將 Python 腳本打包成 Windows 可執行檔。

**需求：**
- Python 已加入 PATH
- 安裝 `auto-py-to-exe`：`pip install auto-py-to-exe`

## ▶️ 使用方式

1. **下載或 clone 本專案**
2. 執行 `install_python_and_auto_py_to_exe.bat`
   - 選擇 Python 版本
   - 安裝 auto-py-to-exe
3. 執行 `open_auto_py_to_exe.bat` 啟動圖形介面

## 🧯 疑難排解

- 🔐 請以系統管理員執行腳本
- 🌐 安裝 Python 過程需穩定網路
- ⚙️ 確認 Python 與 pip 均已正確設定在 PATH 中

---

🇺🇸 [English Version (README.md)](./README.md)
