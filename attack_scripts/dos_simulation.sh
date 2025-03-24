#!/bin/bash
# dos_simulation.sh - Script to simulate DoS attacks (light version)

echo "[+] Starting DoS attack simulation"
echo "[+] Sending rapid requests to web server"

for i in {1..30}; do
  curl -s "http://techstart_web/" > /dev/null
  echo "[+] Request $i sent"
  sleep 0.1
done

echo "[+] DoS simulation complete"