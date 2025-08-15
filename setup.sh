#!/bin/bash

# Exit on any error
set -e

# Create venv if not exists
if [ ! -d "venv" ]; then
    echo "[+] Creating virtual environment..."
    python3 -m venv venv
fi

# Activate venv
source venv/bin/activate

# Install dependencies
echo "[+] Installing dependencies..."
pip install python-nmap termcolor mac_vendor_lookup prettytable

# Copy script to /usr/local/bin
echo "[+] Copying netscan to /usr/local/bin..."
SCRIPT_PATH=$(pwd)/netscan
chmod +x "$SCRIPT_PATH"
sudo ln -sf "$SCRIPT_PATH" /usr/local/bin/netscan

echo "[+] Installation complete!"
echo "Run the script using: sudo netscan"
