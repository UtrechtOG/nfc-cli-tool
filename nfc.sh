#!/data/data/com.termux/files/usr/bin/bash

set -e

ROOT_DIR="$(cd "$(dirname "$0")" && pwd)"

source "$ROOT_DIR/config.sh"
source "$ROOT_DIR/lib/ui.sh"
source "$ROOT_DIR/lib/reader.sh"
source "$ROOT_DIR/lib/parser.sh"

command="$1"

case "$command" in
  scan)
    ui_banner
    nfc_scan
    ;;
  *)
    ui_help
    ;;
esac
