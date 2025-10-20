@echo off
title 🚀 Git Push - Upload Baileys Repo
color 0B

set REPO_DIR=E:\SC BOT PRIBADI\Baileys
set GIT_EMAIL=haficdh@gmail.com
set GIT_NAME=ChandraGO
set REMOTE_URL=https://github.com/ChandraGO/jagprohh.git
set BRANCH=main

echo.
echo =============================================
echo   🚀 Mengirim update dari lokal ke GitHub
echo   📁 Folder: %REPO_DIR%
echo =============================================
echo.

cd /d "%REPO_DIR%"
git config user.email "%GIT_EMAIL%"
git config user.name "%GIT_NAME%"
git remote remove origin >nul 2>&1
git remote add origin %REMOTE_URL%

echo ✍️  Menyimpan perubahan lokal...
git add .
git commit -m "Auto: update dari lokal" 

echo 📤 Mengirim ke GitHub...
git push -u origin %BRANCH%

echo.
echo =============================================
echo   ✅ Perubahan lokal sudah terkirim ke GitHub!
echo =============================================
echo.
pause
exit
