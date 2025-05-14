@echo off
:: 強制使用 UTF-8 編碼
chcp 65001 >nul
setlocal enabledelayedexpansion

:: 自我提權：判斷是否為管理員身份
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 需要系統管理員權限，正在重新啟動為管理員...
    powershell -Command "Start-Process -FilePath '%~f0' -Verb RunAs"
    exit /b
)

:: 主選單
:MAIN_MENU
cls
echo ============================================
echo 操作如下 :
echo 1. 安裝 Python (多版本可選)
echo 2. 安裝 auto-py-to-exe (含依賴)
echo 0. 離開
echo ============================================
set /p main_choice=請選擇功能 (0-2)： 

if "%main_choice%"=="1" goto INSTALL_PYTHON
if "%main_choice%"=="2" goto INSTALL_AUTOPY
if "%main_choice%"=="0" exit
echo 錯誤：無效選擇，按任意鍵返回...
pause >nul
goto MAIN_MENU

:: ---------------- 安裝 Python ----------------
:INSTALL_PYTHON
cls
echo 選擇要安裝的 Python 版本 :
echo 1. Python 3.7.9
echo 2. Python 3.8.10
echo 3. Python 3.9.13
echo 4. Python 3.10.11
echo 5. Python 3.11.9
echo 6. Python 3.12.2
echo 0. 返回上層
set /p py_choice=請輸入版本編號： 

if "%py_choice%"=="1" set PY_VERSION=3.7.9
if "%py_choice%"=="2" set PY_VERSION=3.8.10
if "%py_choice%"=="3" set PY_VERSION=3.9.13
if "%py_choice%"=="4" set PY_VERSION=3.10.11
if "%py_choice%"=="5" set PY_VERSION=3.11.9
if "%py_choice%"=="6" set PY_VERSION=3.12.2
if "%py_choice%"=="0" goto MAIN_MENU
if not defined PY_VERSION (
    echo 錯誤：無效選擇，按任意鍵返回...
    pause >nul
    goto INSTALL_PYTHON
)

set "PY_FILENAME=python-%PY_VERSION%-amd64.exe"
set "PY_URL=https://www.python.org/ftp/python/%PY_VERSION%/%PY_FILENAME%"
set "DOWNLOAD_PATH=%TEMP%\%PY_FILENAME%"

echo.
echo [1/3] 下載 Python %PY_VERSION%...
powershell -Command "Invoke-WebRequest -Uri '%PY_URL%' -OutFile '%DOWNLOAD_PATH%'"

if exist "%DOWNLOAD_PATH%" (
    echo [2/3] 安裝中...
    "%DOWNLOAD_PATH%" /quiet InstallAllUsers=1 PrependPath=1 Include_test=0
) else (
    echo 錯誤：下載失敗，按任意鍵返回...
    pause >nul
    goto MAIN_MENU
)

echo [3/3] 驗證安裝...
python --version || echo 錯誤：Python 安裝可能失敗。
pause
goto MAIN_MENU

:: ---------------- 安裝 auto-py-to-exe ----------------
:INSTALL_AUTOPY
cls
echo 正在確認 pip 是否可用...
python -m ensurepip
python -m pip install --upgrade pip
echo.
echo 開始安裝 auto-py-to-exe...
python -m pip install auto-py-to-exe

echo.
echo ✅ 安裝完成！你可以在命令列執行：
echo auto-py-to-exe
pause
goto MAIN_MENU
