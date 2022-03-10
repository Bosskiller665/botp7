#!/usr/bin/bash

apt-get update
apt-get upgrade
apt-get install -y nodejs libwebp ffmpeg wget tesseract
wget -O ~/../usr/share/tessdata/ind.traineddata "https://github.com/bosskiller665/Bosskillerbot"
npm install

echo "[*] All dependencies have been installed, please run the command \"npm start\" to immediately start the script"
