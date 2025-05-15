# 🐍 Python 與 auto-py-to-exe 自動安裝腳本 ⚙️

> **語言選擇 | Language:**  
> 🇹🇼 繁體中文 | 🇺🇸 [English](./README.md)

歡迎使用！👋 本儲存庫提供一組為 Windows 設計的 **批次檔腳本**，可自動化安裝 Python、多版本選擇、設定系統環境變數，並安裝與啟動 `auto-py-to-exe` 工具。適合想要將 `.py` 腳本快速打包為 `.exe` 可執行檔的開發者。

---

## 📜 腳本總覽

### 1️⃣ `install_python_and_auto_py_to_exe.bat`  
一個互動式批次檔，可協助你：
- 自動安裝多版本 Python（來源為官方網站）
- 自動設定系統 PATH
- 使用 pip 安裝 `auto-py-to-exe`

#### 🔍 功能說明：
- 🔐 **自動偵測管理員權限**：若非以系統管理員執行，會自動使用 PowerShell 提權
- 📋 **互動選單**：
  - [1] 安裝 Python（支援多個版本）
  - [2] 安裝 auto-py-to-exe 工具
  - [0] 離開腳本
- 🐍 **支援的 Python 版本**：
  - 3.7.9、3.8.10、3.9.13、3.10.11、3.11.9、3.12.2
- 🔧 自動執行以下步驟：
  - 從 Python 官網下載安裝程式
  - 靜默安裝（無需手動操作）
  - 加入 Python 與 pip 至 PATH 環境變數
  - 使用 `python --version` 驗證是否安裝成功

### 2️⃣ `open_auto_py_to_exe.bat`  
簡易啟動器，一鍵開啟 `auto-py-to-exe` 圖形介面。

#### 🧰 需求：
- 系統中已安裝 Python 且已加入 PATH
- 執行：`pip install auto-py-to-exe`（亦可透過第一支腳本安裝）

---

## ▶️ 使用教學

### 操作步驟：

1. 📥 **下載或 clone 此儲存庫**
2. 🖱 **雙擊 `install_python_and_auto_py_to_exe.bat`**
   - 從選單選擇欲安裝的 Python 版本
   - 安裝 pip 及 auto-py-to-exe
   - 系統會自動驗證安裝結果
3. 🚀 **執行 `open_auto_py_to_exe.bat`**
   - 開啟 GUI，選擇你要打包的 `.py` 檔案即可產生 `.exe`

---

## 🧯 疑難排解

- ❗ **權限不足**：請以「系統管理員」身份執行批次檔
- 🌐 **下載失敗**：請確保網路連線正常，未受防火牆或代理阻擋
- ⚙️ **找不到指令**：若 `python` 或 `pip` 指令無法使用，請重開命令提示字元或手動設定環境變數
- 🛠 **手動安裝指令**（若腳本失敗）：
  ```sh
  pip install auto-py-to-exe
  auto-py-to-exe
  ```

---

## 📁 檔案總覽

| 檔案名稱 | 說明 |
|----------|------|
| `install_python_and_auto_py_to_exe.bat` | 主要安裝腳本 |
| `open_auto_py_to_exe.bat` | 啟動 GUI |
| `README.md` | 英文說明 |
| `README.zh-TW.md` | 繁體中文說明 |

---

## 👋 製作說明
這些腳本專為想快速安裝 Python 並打包 `.py` 成 `.exe` 的開發者設計～

🇺🇸 [English Version (README.md)](./README.md)
