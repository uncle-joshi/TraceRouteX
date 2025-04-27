# TraceRouteX - IP & Phone Tracker

![Banner](https://img.shields.io/badge/Bash-Script-green?style=for-the-badge&logo=gnu-bash)

TraceRouteX is a lightweight and powerful terminal-based IP and Phone number tracking tool designed for ethical hacking, penetration testing, and research purposes.

> ✨ Built for White Hat Hackers and CyberSecurity Enthusiasts.

---

## 🚀 Features

- 🌐 IP Address Information Lookup (Country, City, Region, ISP, etc.)
- 📞 Phone Number Information Lookup (Country, Location, Carrier, Line Type)
- 🗘️ Generates Google Maps Link for Easy Location
- 📜 Keeps running until user types `exit`
- ⚡️ Auto-installs missing dependencies (`curl`, `jq`)
- 🛡️ Uses Free, Fast APIs (no paid subscription needed)
- 🎨 Beautiful CLI Banner and Colored Output
- 💻 Designed for Kali Linux, Parrot OS, Ubuntu, Arch, Fedora, etc.

---

## 🛠️ Installation

```bash
# Clone the repository
git clone https://github.com/your-username/TraceRouteX.git

# Enter the directory
cd TraceRouteX

# Make the script executable
chmod +x main.sh
```

---

## 📥 Requirements

TraceRouteX will automatically install these if missing:

- `curl` — for making API requests
- `jq` — for parsing JSON data

**Additionally:**  
For Phone Number tracing, you will need a **free API key** from [Numverify](https://numverify.com/).

### How to Get a Free Numverify API Key:

1. Go to [https://numverify.com/](https://numverify.com/).
2. Sign up for a free account.
3. Verify your email.
4. Get your free API Access Key from your dashboard.

Then:

- Open the script:

  ```bash
  nano main.sh
  or
  gedit main.sh
  ```

- Find the line:

  ```bash
  ACCESS_KEY="YOUR_ACCESS_KEY"
  ```

- Replace `YOUR_ACCESS_KEY` with your actual key, like:

  ```bash
  ACCESS_KEY="your_real_api_key_here"
  ```

- Save and exit (`CTRL+O`, `ENTER`, `CTRL+X`).

👉 Now you are ready to use phone number tracing!

---

## ⚡ Usage

```bash
# Run the script
./main.sh
```

You will see a menu:

```bash
  _______                  ______              __      _  __
 /_  __/______  _________  /_  __/___  ____     / /____ | |/ /
  / / / ___/ _ \/ ___/ _ \  / / / __ \/ __ \   / __/ _ \|   /
 / / / /  /  __/ /__/  __/ / / / /_/ / /_/ /  / /_/  __/   |  
/_/ /_/   \___/\___/\___/ /_/  \____/\____/   \__/\___/_/|_|  
                                                              
             TraceRouteX - IP & Phone Tracker
====================================================================

[1] Track a Custom IP
[2] Trace a Phone Number
[3] Exit
```

- `[1]` Track any IP address worldwide.
- `[2]` Trace any phone number (e.g., `14151234567`). not use + in country code 
- `[3]` Exit the tool safely.

---



## 💻 Tested On

- ✅ Kali Linux 2024
- ✅ Parrot OS
- ✅ Ubuntu 22.04 LTS
- ✅ Fedora 38
- ✅ Arch Linux
- ✅ Debian 12

---

## ⚠️ Disclaimer

This tool is intended **for educational purposes only**.  
Unauthorized usage of this tool without permission may violate local, state, or federal laws.  
The developer assumes **no responsibility** for any misuse or damages.

---

## ⭐️ Show Some ❤️

If you like this project, feel free to **star** it and **share** it!  
Contributions are welcome — feel free to submit a Pull Request!

---

# 📦 Final Notes

✅ Fast and simple installation  
✅ Free APIs — no hidden fees  
✅ Designed for pentesters and cybersecurity students  
✅ Works on almost all Linux distributions!

