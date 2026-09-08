param([string]$path)
# 移除前後雙引號（如果有）
$path = $path.Trim('"')
$path = $path.Trim("'")
# 設定剪貼簿
Set-Clipboard -Value $path
