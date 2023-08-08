#!/bin/bash
wget https://github.com/Bitofsin/VerusCliMining/blob/main/startverusminertermux.sh
chmod +x startverusminertermux.sh
pkg install -y proot proot-distro 
proot-distro install ubuntu
proot-distro login ubuntu



