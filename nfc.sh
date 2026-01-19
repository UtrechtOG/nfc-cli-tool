#!/data/data/com.termux/files/usr/bin/bash

# ------------------------------
# NFC CLI Tool – Entry Point
# ------------------------------

set -e  # Stoppt bei Fehlern sofort

# Absoluter Pfad zum Repo
ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Alle Module laden
source "$ROOT_DIR/config.sh"
source "$ROOT_DIR/lib/ui.sh"
source "$ROOT_DIR/lib/reader.sh"
source "$ROOT_DIR/lib/parser.sh"

# Befehl aus CLI-Argument
command="$1"

# ------------------------------
# CLI Befehle
# ------------------------------
case "$command" in
  scan)
    ui_banner
    nfc_scan
    ;;
  history)
    ui_banner
    nfc_history
    ;;
  help|--help|-h|"" )
    ui_help
    ;;
  *)
    echo "❌ Unknown command: $command"
    ui_help
    exit 1
    ;;
esac
