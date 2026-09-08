@echo off
chcp 65001 >nul 2>&1
title 安裝「複製路徑」右鍵選單

echo ============================================
echo    Windows 10 「複製路徑」右鍵選單 - 安裝
echo ============================================
echo.

:: 檢查是否以系統管理員執行（非必要，但提示一下）
net session >nul 2>&1
if %errorLevel% neq 0 (
    echo 注意：目前未以系統管理員身份執行。
    echo 此工具只需一般使用者權限即可安裝。
    echo.
)

:: 取得目前使用者名稱
set "USERNAME=%USERNAME%"
set "PS1PATH=%USERPROFILE%\CopyPath.ps1"

echo [1/3] 複製 PowerShell 腳本...
copy /Y "%~dp0CopyPath.ps1" "%PS1PATH%" >nul 2>&1
if %errorLevel% neq 0 (
    echo 錯誤：無法複製 CopyPath.ps1 到 %PS1PATH%
    echo 請確認檔案存在且有寫入權限。
    pause
    exit /b 1
)
echo       已複製到：%PS1PATH%

echo.
echo [2/3] 建立 Registry 機碼...

:: 建立檔案右鍵選單
reg add "HKCU\Software\Classes\*\shell\CopyPath" /ve /d "複製路徑" /f >nul 2>&1
reg add "HKCU\Software\Classes\*\shell\CopyPath\command" /ve /d "powershell.exe -NoProfile -ExecutionPolicy Bypass -File \"%PS1PATH%\" \"%%1\"" /f >nul 2>&1

:: 建立資料夾右鍵選單
reg add "HKCU\Software\Classes\Directory\shell\CopyPath" /ve /d "複製路徑" /f >nul 2>&1
reg add "HKCU\Software\Classes\Directory\shell\CopyPath\command" /ve /d "powershell.exe -NoProfile -ExecutionPolicy Bypass -File \"%PS1PATH%\" \"%%1\"" /f >nul 2>&1

if %errorLevel% neq 0 (
    echo 錯誤：無法寫入 Registry。
    pause
    exit /b 1
)
echo       Registry 機碼已建立。

echo.
echo [3/3] 重新整理 Windows Explorer...
:: 通知 Explorer 重新載入設定
powershell.exe -NoProfile -Command "Stop-Process -Name explorer -Force -ErrorAction SilentlyContinue; Start-Process explorer.exe" >nul 2>&1

echo       Explorer 已重新啟動。

echo.
echo ============================================
echo    已成功安裝！
echo ============================================
echo.
echo 現在您可以在檔案總管中：
echo   - 對檔案按右鍵 → 選擇「複製路徑」
echo   - 對資料夾按右鍵 → 選擇「複製路徑」
echo.
echo 路徑會複製到剪貼簿（不含雙引號）。
echo.
echo 若要移除，請執行 uninstall.bat
echo.
pause
