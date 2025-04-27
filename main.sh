#!/bin/bash

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m' # No Color

# Install requirements if missing
command -v curl >/dev/null 2>&1 || { echo "Installing curl..."; sudo apt update && sudo apt install curl -y; }
command -v jq >/dev/null 2>&1 || { echo "Installing jq..."; sudo apt update && sudo apt install jq -y; }

# Banner
clear
echo -e "${CYAN}"
cat << "EOF"
  _______                  ______              __      _  __
 /_  __/______  _________  /_  __/___  ____     / /____ | |/ /
  / / / ___/ _ \/ ___/ _ \  / / / __ \/ __ \   / __/ _ \|   / 
 / / / /  /  __/ /__/  __/ / / / /_/ / /_/ /  / /_/  __/   |  
/_/ /_/   \___/\___/\___/ /_/  \____/\____/   \__/\___/_/|_|  
                                                              
             TraceRouteX - IP & Phone Tracker
====================================================================
EOF
echo -e "${NC}"

while true; do
  echo -e "${GREEN}"
  echo "[1] Track a Custom IP"
  echo "[2] Trace a Phone Number"
  echo "[3] Exit"
  echo -e "${NC}"
  
  read -p "[?] Choose an option (1/2/3): " choice
  
  if [[ "$choice" == "1" ]]; then
    read -p "[?] Enter IP Address: " ip
    response=$(curl -s "https://ipwhois.app/json/$ip")

    success=$(echo "$response" | jq -r '.success')
    if [[ "$success" == "false" ]]; then
      echo -e "${RED}[!] Invalid IP address or lookup failed.${NC}"
    else
      ip_address=$(echo "$response" | jq -r '.ip')
      country=$(echo "$response" | jq -r '.country')
      region=$(echo "$response" | jq -r '.region')
      city=$(echo "$response" | jq -r '.city')
      isp=$(echo "$response" | jq -r '.isp')
      
      echo -e "${GREEN}[+] IP Address Information:${NC}"
      echo -e "${CYAN}------------------------------------------------${NC}"
      echo -e "${WHITE}IP Address: ${NC}$ip_address"
      echo -e "${WHITE}Country:    ${NC}$country"
      echo -e "${WHITE}Region:     ${NC}$region"
      echo -e "${WHITE}City:       ${NC}$city"
      echo -e "${WHITE}ISP:        ${NC}$isp"
      echo -e "${CYAN}------------------------------------------------${NC}"
      
      if [[ -n "$city" && -n "$country" ]]; then
        echo -e "${WHITE}Google Maps: ${NC}https://www.google.com/maps/search/$city,$country"
      fi
    fi
    read -p "Press ENTER to continue..."

  elif [[ "$choice" == "2" ]]; then
    read -p "[?] Enter Phone Number (with country code, e.g. +14151234567): " phone

    # IMPORTANT: Replace YOUR_ACCESS_KEY with your real key (it's free on numverify)
    ACCESS_KEY="your_access_key"

    response=$(curl -s "http://apilayer.net/api/validate?access_key=$ACCESS_KEY&number=$phone&country_code=&format=1")
    valid=$(echo "$response" | jq -r '.valid')

    if [[ "$valid" == "true" ]]; then
      country=$(echo "$response" | jq -r '.country_name')
      location=$(echo "$response" | jq -r '.location')
      carrier=$(echo "$response" | jq -r '.carrier')
      line_type=$(echo "$response" | jq -r '.line_type')

      echo -e "${GREEN}[+] Phone Number Information:${NC}"
      echo -e "${CYAN}------------------------------------------------${NC}"
      echo -e "${WHITE}Phone Number: ${NC}$phone"
      echo -e "${WHITE}Country:      ${NC}$country"
      echo -e "${WHITE}Location:     ${NC}${location:-Unknown}"
      echo -e "${WHITE}Carrier:      ${NC}${carrier:-Unknown}"
      echo -e "${WHITE}Line Type:    ${NC}${line_type:-Unknown}"
      echo -e "${CYAN}------------------------------------------------${NC}"

    else
      echo -e "${RED}[!] Failed to find details. Invalid number or lookup failed.${NC}"
    fi
    read -p "Press ENTER to continue..."

  elif [[ "$choice" == "3" ]]; then
    echo -e "${GREEN}Goodbye!${NC}"
    exit 0
  else
    echo -e "${RED}[!] Invalid option. Try again.${NC}"
  fi
done

