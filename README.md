# Windows 10 「複製路徑」右鍵選單工具

<p align="center">
  <b>🇹🇼 台灣繁體中文</b> | 
  <a href="#english">🇺🇸 English</a> | 
  <a href="#日本語">🇯🇵 日本語</a> | 
  <a href="#한국어">🇰🇷 한국어</a> | 
  <a href="#简体中文">🇨🇳 简体中文</a>
</p>

讓 Windows 10 檔案總管的右鍵選單像 Windows 11 一樣，直接出現「複製路徑」功能。

<p align="center">
  <img src="https://img.shields.io/badge/Windows-10-blue?logo=windows" alt="Windows 10">
  <img src="https://img.shields.io/badge/PowerShell-5.1-blue?logo=powershell" alt="PowerShell">
  <img src="https://img.shields.io/badge/License-MIT-green" alt="MIT License">
  <img src="https://img.shields.io/badge/No_Admin-Required-brightgreen" alt="No Admin Required">
</p>

---

## 🇹🇼 台灣繁體中文

### 功能

- ✅ 對「檔案」按右鍵 → 出現「複製路徑」
- ✅ 對「資料夾」按右鍵 → 出現「複製路徑」
- ✅ 點擊後將完整路徑複製到剪貼簿
- ✅ **複製結果不含前後雙引號**
- ✅ 支援空格、中文、括號、符號等特殊字元
- ✅ 只修改 HKCU（目前使用者），不影響其他使用者
- ✅ 可完整移除還原
- ✅ 不需要管理員權限

### 使用方法

**方法一：一鍵安裝（推薦）**
1. 下載本 repository
2. 雙擊 `install.bat`
3. 出現「已成功安裝」訊息後，重啟檔案總管或登出再登入即可使用

**方法二：手動安裝**
1. 下載 `CopyPath.ps1` 並放到 `C:\Users\你的使用者名稱\CopyPath.ps1`
2. 使用 `regedit` 建立 Registry 機碼（請參考 [INSTALL_zh_TW.md](INSTALL_zh_TW.md)）
3. 重啟 explorer.exe 或登出再登入

### 移除方法

雙擊 `uninstall.bat` 即可完整移除。

---

<a id="english"></a>
## 🇺🇸 English

### Features

- ✅ Right-click any **file** → "Copy Path" appears
- ✅ Right-click any **folder** → "Copy Path" appears
- ✅ Copies full path to clipboard
- ✅ **No surrounding double quotes** in clipboard
- ✅ Supports spaces, Unicode, brackets, special characters
- ✅ Only modifies HKCU (current user), no admin required
- ✅ Fully reversible

### Usage

**Method 1: One-click install (Recommended)**
1. Download this repository
2. Double-click `install.bat`
3. Restart File Explorer or log off/on

**Method 2: Manual install**
1. Download `CopyPath.ps1` to `C:\Users\YourUsername\CopyPath.ps1`
2. Create Registry keys (see [INSTALL_en.md](INSTALL_en.md))
3. Restart explorer.exe

### Uninstall

Double-click `uninstall.bat` to completely remove.

---

<a id="日本語"></a>
## 🇯🇵 日本語

### 機能

- ✅ ファイルを右クリック →「コピーパス」が表示
- ✅ フォルダを右クリック →「コピーパス」が表示
- ✅ クリップボードにフルパスをコピー
- ✅ **前後にダブルクォーテーションなし**
- ✅ スペース、日本語、括弧、特殊文字に対応
- ✅ HKCU（現在のユーザーのみ）を変更、管理者権限不要
- ✅ 完全に削除可能

### 使用方法

**方法1：ワンクリックインストール（推奨）**
1. このリポジトリをダウンロード
2. `install.bat` をダブルクリック
3. エクスプローラーを再起動、またはログオフ/オン

**方法2：手動インストール**
1. `CopyPath.ps1` を `C:\Users\ユーザー名\CopyPath.ps1` に配置
2. Registry キーを作成（[INSTALL_ja.md](INSTALL_ja.md) を参照）
3. explorer.exe を再起動

### アンインストール

`uninstall.bat` をダブルクリックで完全に削除されます。

---

<a id="한국어"></a>
## 🇰🇷 한국어

### 기능

- ✅ 파일 우클릭 →「경로 복사」 표시
- ✅ 폴더 우클릭 →「경로 복사」 표시
- ✅ 클립보드에 전체 경로 복사
- ✅ **앞뒤에 큰따옴표 없음**
- ✅ 공백, 한글, 괄호, 특수문자 지원
- ✅ HKCU(현재 사용자)만 수정, 관리자 권한 불필요
- ✅ 완전한 제거 가능

### 사용 방법

**방법 1: 원클릭 설치 (권장)**
1. 이 저장소 다운로드
2. `install.bat` 더블클릭
3. 파일 탐색기 재시작 또는 로그오프/온

**방법 2: 수동 설치**
1. `CopyPath.ps1` 을 `C:\Users\사용자명\CopyPath.ps1` 에 배치
2. Registry 키 생성 ([INSTALL_ko.md](INSTALL_ko.md) 참조)
3. explorer.exe 재시작

### 제거 방법

`uninstall.bat` 을 더블클릭하면 완전히 제거됩니다。

---

<a id="简体中文"></a>
## 🇨🇳 简体中文

### 功能

- ✅ 右键「文件」→ 出现「复制路径」
- ✅ 右键「文件夹」→ 出现「复制路径」
- ✅ 点击后将完整路径复制到剪贴板
- ✅ **复制结果不含前后双引号**
- ✅ 支持空格、中文、括号、符号等特殊字符
- ✅ 只修改 HKCU（当前用户），不影响其他用户
- ✅ 可完整移除还原
- ✅ 不需要管理员权限

### 使用方法

**方法一：一键安装（推荐）**
1. 下载本仓库
2. 双击 `install.bat`
3. 出现「已成功安装」提示后，重启文件资源管理器或注销再登录

**方法二：手动安装**
1. 下载 `CopyPath.ps1` 并放到 `C:\Users\你的用户名\CopyPath.ps1`
2. 使用 `regedit` 建立 Registry 机码（请参考 [INSTALL_zh_CN.md](INSTALL_zh_CN.md)）
3. 重启 explorer.exe 或注销再登录

### 移除方法

双击 `uninstall.bat` 即可完整移除。

---

## 📁 檔案說明 / File Description

| 檔案 | 說明 |
|------|------|
| `CopyPath.ps1` | PowerShell 腳本，負責將路徑複製到剪貼簿 |
| `install.bat` | 一鍵安裝批次檔 |
| `uninstall.bat` | 一鍵移除批次檔 |
| `README.md` | 多語言說明文件 |
| `LICENSE` | MIT 授權條款 |

## 🔍 關鍵字 / Keywords

`windows 10` `copy path` `context menu` `right click` `registry` `powershell` `explorer` `clipboard` `右鍵選單` `複製路徑` `檔案總管` `コピーパス` `エクスプローラー` `경로 복사` `파일 탐색기`

## 運作原理

1. 透過 Registry `HKCU\Software\Classes\*\shell\CopyPath` 和 `HKCU\Software\Classes\Directory\shell\CopyPath` 新增右鍵選單項目
2. 點擊選單時，Explorer 會呼叫 PowerShell 腳本，並將檔案路徑作為參數傳入
3. 腳本將路徑的前後雙引號移除後，使用 `Set-Clipboard` 寫入剪貼簿

## 系統需求

- Windows 10（任何版本）
- PowerShell 5.1 或更新版本（Windows 10 內建）
- 不需要管理員權限（只修改 HKCU）

## 授權

MIT License - 請詳見 [LICENSE](LICENSE) 檔案
