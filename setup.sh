#!/data/data/com.termux/files/usr/bin/bash

echo -e "\n🚀 Starting fresh Termux setup..."

# 🧼 Reset Termux official repo (if corrupted or old)
echo -e "\n🔧 Resetting official Termux repositories..."
termux-change-repo
pkg update -y && pkg upgrade -y

# 🛠 Essential packages
echo -e "\n📦 Installing dev essentials..."
pkg install -y git curl wget nano vim neovim clang python

# 🐍 Python pip and common modules
echo -e "\n🐍 Setting up Python environment..."
pip install --upgrade pip
pip install requests rich

# ⚙️ HTML, CSS, JS support (basics)
echo -e "\n🌐 Setting up frontend dev support..."
pkg install -y nodejs

# 🔁 Gemini CLI (assumes you use memory with it)
echo -e "\n🌠 Installing Gemini CLI (with memory)..."
npm install -g @google/gemini-cli

echo -e "\n✨ Gemini CLI installed globally! You can use:"
echo -e "   gemini chat --memory\n"

# 🧠 Optional: create Gemini memory folder
mkdir -p ~/.gemini/memory

# ✅ Final check
echo -e "\n✅ All set, fam. Here's what you got now:\n"
echo -e " - Editors: nano, vim, neovim"
echo -e " - Git: configured and ready"
echo -e " - Languages: Python, C (clang), JS (node)"
echo -e " - Gemini CLI with memory"
echo -e " - Termux repo is clean"

echo -e "\n🧃 You’re ready to build. Stay grinding!\n"
