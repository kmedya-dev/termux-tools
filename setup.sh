#!/data/data/com.termux/files/usr/bin/bash

# ----------------------------------
# Termux Tools Setup by kmedya-dev
# ----------------------------------

echo -e "\033[1;32m[+] Updating packages...\033[0m"
pkg update -y && pkg upgrade -y

echo -e "\033[1;32m[+] Installing essential packages...\033[0m"
pkg install -y git curl wget nano vim python nodejs

echo -e "\033[1;32m[+] Setting up storage access...\033[0m"
termux-setup-storage

echo -e "\033[1;32m[+] Installing Python packages...\033[0m"
pip install --upgrade pip
pip install requests beautifulsoup4

echo -e "\033[1;32m[+] Creating bin directory and alias...\033[0m"
mkdir -p ~/bin
echo 'export PATH=$HOME/bin:$PATH' >> ~/.bashrc
source ~/.bashrc

echo -e "\033[1;34m[*] All done! Termux is now ready, Koustava 🚀\033[0m"
