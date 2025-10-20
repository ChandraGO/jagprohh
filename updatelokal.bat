@echo off
title Auto Git Update - Baileys Project
color 0A

REM ===============================
REM SETTING DASAR
REM ===============================
set REPO_DIR=E:\SC BOT PRIBADI\Baileys
set GIT_EMAIL=haficdh@gmail.com
set GIT_NAME=ChandraGO
set REMOTE_URL=https://github.com/ChandraGO/jagprohh.git
set BRANCH=main

echo.
echo =============================================
echo   🚀 Updating Repository: %REPO_DIR%
echo =============================================
echo.

REM Ganti ke direktori repo
cd /d "%REPO_DIR%"

REM Pastikan identitas git sudah benar
git config user.email "%GIT_EMAIL%"
git config user.name "%GIT_NAME%"

REM Tambahkan remote kalau belum ada
git remote remove origin >nul 2>&1
git remote add origin %REMOTE_URL%

REM Simpan semua perubahan lokal sebelum pull
echo 🔄 Menyimpan perubahan lokal...
git add .
git commit -m "Auto: commit lokal sebelum pull" >nul 2>&1

REM Sinkronisasi dengan repo GitHub
echo 📥 Menarik update dari GitHub...
git pull origin %BRANCH%

echo.
echo =============================================
echo   ✅ Proses selesai! Repository sudah update.
echo =============================================
echo.
pause
exit
