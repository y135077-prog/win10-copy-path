@echo off
chcp 65001 >nul 2>&1
title 移除「複製路徑」右鍵選單

echo ============================================
echo    Windows 10 「複製路徑」右鍵選單 - 移除
echo ============================================
echo.

echo [1/3] 刪除 Registry 機碼...

:: 刪除檔案右鍵選單
reg delete "HKCU\Software\Classes\*\shell\CopyPath" /f >nul 2>&1
if %errorLevel% equ 0 (
    echo       已刪除：HKCU\Software\Classes\*\shell\CopyPath
) else (
    echo       機碼不存在或已刪除
)

:: 刪除資料夾右鍵選單
reg delete "HKCU\Software\Classes\Directory\shell\CopyPath" /f >nul 2>&1
if %errorLevel% equ 0 (
    echo       已刪除：HKCU\Software\Classes\Directory\shell\CopyPath
) else (
    echo       機碼不存在或已刪除
)

echo.
echo [2/3] 刪除 PowerShell 腳本...
set "PS1PATH=%USERPROFILE%\CopyPath.ps1"
if exist "%PS1PATH%" (
    del /F "%PS1PATH%" >nul 2>&1
    echo       已刪除：%PS1PATH%
) else (
    echo       腳本不存在
)

echo.
echo [3/3] 重新整理 Windows Explorer...
powershell.exe -NoProfile -Command "Stop-Process -Name explorer -Force -ErrorAction SilentlyContinue; Start-Process explorer.exe" >nul 2>&1
echo       Explorer 已重新啟動。

echo.
echo ============================================
echo    已成功移除！
echo ============================================
echo.
echo 「複製路徑」功能已從右鍵選單中移除。
echo.
pause
