#!/data/data/com.termux/files/usr/bin/bash

GREEN="\033[38;5;46m"
RED="\033[38;5;196m"
RESET="\033[0m"

ui_banner() {
  echo -e "${GREEN}"
  echo "======================="
  echo "   NFC CLI TOOL"
  echo "======================="
  echo -e "${RESET}"
}

ui_help() {
  echo "Usage:"
  echo "  ./nfc.sh scan      Scan NFC tag"
}
