#!/data/data/com.termux/files/usr/bin/bash

nfc_scan() {
  echo "📡 Waiting for NFC tag..."
  RESULT=$(termux-nfc -t "$NFC_TIMEOUT" || true)

  if [ -z "$RESULT" ]; then
    echo "❌ No NFC tag detected"
    exit 1
  fi

  parse_nfc "$RESULT"
}
