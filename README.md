# NetworkScanner
# NetScan

NetScan is a simple Python-based network scanner that discovers devices connected to your local network.  
It uses ARP requests to detect active hosts and displays their IP & MAC addresses.

---

## Features
- Scans your local network for active devices
- Displays IP and MAC address of each device
- Lightweight and easy to use
- Runs from anywhere once installed

---

## Requirements
- Python 3.x
- `scapy` library
- Root privileges (required for network scanning)

---

## Installation & Setup
Run the setup script (it will handle everything for you):

```bash
chmod +x setup.sh
sudo ./setup.sh
```

to run the script:
   sudo netscan

### sample output
IP Address       MAC Address
192.168.1.1      00:11:22:33:44:55
192.168.1.101    66:77:88:99:AA:BB

