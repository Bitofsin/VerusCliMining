#!/bin/sh
pkg install proot proot-distro
proot-distro install ubuntu
proot-distro login ubuntu
apt-get update && apt-get upgrade -y
apt-get install wget
git clone https://github.com/Bitofsin/VerusCliMining.git

wget https://github.com/Oink70/Android-Mining/releases/download/v3.8.3-4/ccminer-3.8.3-4_ARM -o ~/

