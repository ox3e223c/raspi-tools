# Windows 10 WSL2 開發環境安裝指南

## 參考資料
安裝 wsl 
https://docs.microsoft.com/zh-tw/windows/wsl/install-win10

更新 WSL 2 Linux 核心 
https://docs.microsoft.com/zh-tw/windows/wsl/wsl2-kernel

## 安裝步驟

1. 安裝 WSL
'''
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
wsl --set-default-version 2
'''

2. 重開機

3. 更新 WSL 2 Linux 核心

4. 至 Microsoft Store 安裝 Debian

5. 執行 Debian 並安裝

6. 安裝字體 DejaVu Sans Mono for Powerline

7. 安裝基礎工具即完成 ( curl, wget, vim, tmux, mosh... etc.)




