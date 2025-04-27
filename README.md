# TraceRouteX - IP & Phone Tracker

![Banner](https://img.shields.io/badge/Bash-Script-green?style=for-the-badge&logo=gnu-bash)

TraceRouteX is a lightweight and powerful terminal-based IP and Phone number tracking tool designed for ethical hacking, penetration testing, and research purposes.

> ✨ Built for White Hat Hackers and CyberSecurity Enthusiasts.

---

## 🚀 Features

- 🌐 IP Address Information Lookup (Country, City, Region, ISP, etc.)
- 📞 Phone Number Information Lookup (Country, Location, Carrier, Line Type)
- 🗺️ Generates Google Maps Link for Location
- 📜 Keeps running until user exits manually
- ⚡ Auto-installs missing dependencies (`curl`, `jq`)
- 🛡️ Fast, Free APIs used
- 🎨 Beautiful CLI Banner and Colored Output
- 📂 Designed for Kali Linux, Parrot OS, Ubuntu, Arch, Fedora, etc.

---

## 🛠 Installation

```bash
git clone https://github.com/your-username/TraceRouteX.git
cd TraceRouteX
chmod +x main.sh
./main.sh



##📥 Requirements
TraceRouteX will automatically install the following if missing:

curl

jq

Make sure you have sudo access to install packages.

##🔑 API Key (Phone Number Lookup)
TraceRouteX uses Numverify for phone number validation.

Go to https://numverify.com/, create a free account.

Get your API Access Key (free tier).

Edit the script:

bash
Copy
Edit
nano traceroutex.sh
Find the line:

bash
Copy
Edit
ACCESS_KEY="YOUR_ACCESS_KEY"
Replace "YOUR_ACCESS_KEY" with your actual key.

Save and close.

#⚡ Usage
bash
Copy
Edit
./traceroutex.sh
Then select:


Option	Description
[1]	Track a Custom IP Address
[2]	Trace a Phone Number
[3]	Exit Tool
