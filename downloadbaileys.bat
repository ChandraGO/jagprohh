@echo off
title 🚀 Git Pull - Update Baileys Repo
color 0A

set REPO_DIR=E:\SC BOT PRIBADI\Baileys
set GIT_EMAIL=haficdh@gmail.com
set GIT_NAME=ChandraGO
set REMOTE_URL=https://github.com/ChandraGO/jagprohh.git
set BRANCH=main

echo.
echo =============================================
echo   🔄 Menarik update terbaru dari GitHub
echo   📁 Folder: %REPO_DIR%
echo =============================================
echo.

cd /d "%REPO_DIR%"
git config user.email "%GIT_EMAIL%"
git config user.name "%GIT_NAME%"
git remote remove origin >nul 2>&1
git remote add origin %REMOTE_URL%

echo 📦 Menyimpan perubahan lokal sementara...
git add .
git commit -m "Auto: backup sebelum git pull" >nul 2>&1

echo 📥 Menarik update dari GitHub...
git pull origin %BRANCH%

echo.
echo =============================================
echo   ✅ Repo sudah diperbarui dari GitHub!
echo =============================================
echo.
pause
exit
