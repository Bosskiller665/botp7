#!/usr/bin/bash

GREEN='\033[0;31m'
GRE='\033[0;32m'
echo "${GRE} Iniciando Backup."

sleep 1
echo "${GRE} Criando Pasta de Backup.."
cd ../
FILES=bosskillerback
if [ -d "$FILES" ]; then
    echo "${GREEN} $FILES Existe Apagando e Criando..."
        cd ./ && rm -rf bosskillerback
      sleep 2
    else 
    echo "${GRE} $FILES Não Existe Criando Prosseguindo..."
fi
mkdir bosskillerback

sleep 1
echo "${GRE} Copiando Arquivos..."
cd botp7
cp -fR ./logos ../bosskillerback
cp -fR ./dono ../bosskillerback
cp -fR ./datab ../bosskillerback
cp -fR ./audios ../bosskillerback
FILE=BarBar.json
if [ -f "$FILE" ]; then
    cp -f BarBar.json ../bosskillerback
    else 
    echo "${GREEN} $FILE Não Existe Prosseguindo..."
fi
cd ../
echo "${GRE} Arquivos Copiados Prosseguindo...."
sleep 2
rm -rf bosskillerbot && https://github.com/Bosskiller665/bosskillerbot.git
sleep 2
echo "${GRE} Pasta do Bot Atualizada Prosseguindo..."
sleep 2
rm -rf bosskillerbot/logos/
rm -rf bosskillerbot/dono/
rm -rf bosskillerbot/datab/
rm -rf bosskillerbot/audios/
cd bosskillerback
cp -fR ./logos ../bosskillerbot
cp -fR ./dono ../bosskillerbot
cp -fR ./datab ../bosskillerbot
cp -fR ./audios ../bosskillerbot

if [ -f "$FILE" ]; then
    cp -f ./BarBar.json ../bosskillerbot
fi
sleep 2
echo "${GRE} O Backup Ficara salvo na pasta bosskiller back Prosseguindo..."
sleep 1
echo "${GRE} Bot Atualizado com Sucesso."
exit
