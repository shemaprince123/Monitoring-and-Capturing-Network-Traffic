#!/bin/bash
# port_scan.sh - Script to perform port scanning attacks

echo "[+] Starting port scan attack simulation"
echo "[+] Basic port scan of web server"
nmap techstart_web

echo "[+] More aggressive scan with service detection"
nmap -A -T4 techstart_web

echo "[+] Stealth SYN scan of entire subnet"
nmap -sS 172.18.0.0/24

echo "[+] Port scan complete"