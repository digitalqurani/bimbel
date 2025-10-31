@echo off
echo ======================================
echo 🚀 Membangun dan Mengemas Proyek MDIQ (Admin)
echo ======================================

REM Install dependencies
echo 📦 Menginstal dependensi...
npm install

REM Build project
echo 🛠️ Membuat build produksi...
npm run build

REM Zip dist
echo 🗜️ Mengemas folder build menjadi mdiq-bimbel-firestore.zip...
powershell Compress-Archive -Path .\dist\* -DestinationPath .\mdiq-bimbel-firestore.zip -Force

echo ✅ Selesai!
echo File ZIP siap: mdiq-bimbel-firestore.zip
pause
