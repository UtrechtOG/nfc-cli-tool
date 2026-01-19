#!/data/data/com.termux/files/usr/bin/bash

parse_nfc() {
  DATA="$1"

  echo "✅ Tag detected"
  echo "$DATA" | jq .
}
