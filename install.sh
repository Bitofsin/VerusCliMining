#!/bin/sh
apt-get -y update && apt-get -y upgrade
apt-get -y install libcurl4 openssl libjansson-dev libomp-dev git screen nano jq wget
wget http://ports.ubuntu.com/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_arm64.deb
dpkg -i libssl1.1_1.1.0g-2ubuntu4_arm64.deb
rm libssl1.1_1.1.0g-2ubuntu4_arm64.deb
git clone https://github.com/Bitofsin/VerusCliMining.git
cd ~/VerusCliMining
rm ccminer
wget https://github.com/Oink70/Android-Mining/releases/download/v3.8.3-4/ccminer-3.8.3-4_ARM 
mv ~/VerusCliMining/ccminer-3.8.3-4_ARM ~/VerusCliMining/ccminer
chmod +x ccminer

cat << EOF > ~/VerusCliMining/start.sh
#!/bin/sh
~/VerusCliMining/ccminer -c ~/VerusCliMining/config.json
EOF
chmod +x start.sh
