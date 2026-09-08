# Windows 10 「複製路徑」右鍵選單工具

讓 Windows 10 檔案總管的右鍵選單像 Windows 11 一樣，直接出現「複製路徑」功能。

![Windows 10](https://img.shields.io/badge/Windows-10-blue?logo=windows)
![PowerShell](https://img.shields.io/badge/PowerShell-5.1-blue?logo=powershell)
![License](https://img.shields.io/badge/License-MIT-green)

## 功能

- ✅ 對「檔案」按右鍵 → 出現「複製路徑」
- ✅ 對「資料夾」按右鍵 → 出現「複製路徑」
- ✅ 點擊後將完整路徑複製到剪貼簿
- ✅ **複製結果不含前後雙引號**
- ✅ 支援空格、中文、括號、符號等特殊字元
- ✅ 只修改 HKCU（目前使用者），不影響其他使用者
- ✅ 可完整移除還原

## 使用方法

### 方法一：一鍵安裝（推薦）

1. 下載本repository
2. 雙擊 `install.bat`
3. 出現「已成功安裝」訊息後，重啟檔案總管或登出再登入即可使用

### 方法二：手動安裝

1. 下載 `CopyPath.ps1` 並放到 `C:\Users\你的使用者名稱\CopyPath.ps1`
2. 使用 `regedit` 建立以下 Registry 機碼：

```
HKCU\Software\Classes\*\shell\CopyPath
  (預設) = 複製路徑
  command\(預設) = powershell.exe -NoProfile -ExecutionPolicy Bypass -File "C:\Users\你的使用者名稱\CopyPath.ps1" "%1"

HKCU\Software\Classes\Directory\shell\CopyPath
  (預設) = 複製路徑
  command\(預設) = powershell.exe -NoProfile -ExecutionPolicy Bypass -File "C:\Users\你的使用者名稱\CopyPath.ps1" "%1"
```

3. 重啟 explorer.exe 或登出再登入

### 使用方式

安裝完成後：
1. 在檔案總管中對任意「檔案」按右鍵 → 選擇「複製路徑」
2. 對任意「資料夾」按右鍵 → 選擇「複製路徑」
3. 路徑已複製到剪貼簿，直接貼到任何地方即可

**複製結果範例：**
```
C:\api\02trad_py\tower_ma\tower_line_strategy_v3.py
```

## 移除方法

### 方法一：一鍵移除

雙擊 `uninstall.bat`

### 方法二：手動移除

執行 `regedit` 刪除以下機碼：
```
HKCU\Software\Classes\*\shell\CopyPath
HKCU\Software\Classes\Directory\shell\CopyPath
```

然後刪除 `C:\Users\你的使用者名稱\CopyPath.ps1`，重啟 explorer.exe 即可。

## 檔案說明

| 檔案 | 說明 |
|------|------|
| `CopyPath.ps1` | PowerShell 腳本，負責將路徑複製到剪貼簿 |
| `install.bat` | 一鍵安裝批次檔 |
| `uninstall.bat` | 一鍵移除批次檔 |
| `README.md` | 本說明文件 |
| `LICENSE` | MIT 授權條款 |

## 運作原理

1. 透過 Registry `HKCU\Software\Classes\*\shell\CopyPath` 和 `HKCU\Software\Classes\Directory\shell\CopyPath` 新增右鍵選單項目
2. 點擊選單時，Explorer 會呼叫 PowerShell 腳本，並將檔案路徑作為參數傳入
3. 腳本將路徑的前後雙引號移除後，使用 `Set-Clipboard` 寫入剪貼簿

## 系統需求

- Windows 10（任何版本）
- PowerShell 5.1 或更新版本（Windows 10 內建）
- 不需要管理員權限（只修改 HKCU）

## 常見問題

**Q: 需要管理員權限嗎？**
A: 不需要。此工具只修改目前使用者的 Registry（HKCU），所以不需要系統管理員權限。

**Q: 會影響其他使用者嗎？**
A: 不會。此工具只對目前登入的使用者生效。

**Q: 更新 Windows 後還會有效嗎？**
A: 會。Registry 設定會持續保留，除非手動移除。

**Q: 路徑中有特殊字元（如 `&`、`|`）會出錯嗎？**
A: 不會。PowerShell 腳本能正確處理各種特殊字元。

## 授權

MIT License - 請詳見 [LICENSE](LICENSE) 檔案
