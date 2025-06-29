cat > termux-setup.sh << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

# 🎯 Refresh the official Termux repo
echo "🔁 Updating Termux packages..."
pkg update -y && pkg upgrade -y

# 📦 Install Editors
echo "🛠 Installing editors: nano, vim, neovim..."
pkg install -y nano vim neovim

# 💻 Install Programming Tools
echo "🐍 Installing project tools: Python, C, HTML/CSS/JS..."
pkg install -y python clang nodejs

# 🧠 Enable pip & some extras
pip install --upgrade pip
pip install rich requests

# 🌀 Install Git
echo "🔗 Installing Git..."
pkg install -y git

# 🌐 Install Gemini CLI with memory
echo "🚀 Installing Gemini CLI (with memory)..."
pkg install -y curl unzip
curl -LO https://github.com/itsmevishaljadhav/Gemini-CLI/raw/main/gemini-cli.zip
unzip gemini-cli.zip -d gemini-cli
cd gemini-cli
chmod +x gemini
mv gemini /data/data/com.termux/files/usr/bin/
cd .. && rm -rf gemini-cli gemini-cli.zip
echo "📌 Gemini CLI installed as 'gemini' command. Memory feature built-in."

# ✅ Enable Termux official repository (if not already)
echo "📚 Checking Termux official repo..."
termux-change-repo

# 🏪 Optional: Install Termux tools like storage access
echo "🗂 Enabling Termux storage access..."
termux-setup-storage

echo "🎉 Setup complete! Restart Termux if needed."
EOF
