#!/bin/bash
# run_all_attacks.sh - Master script to run all attack simulations

echo "======================================"
echo "TechStart Security Attack Simulation"
echo "======================================"

echo "Installing required tools..."
apt-get update
apt-get install -y nmap curl netcat-traditional

echo "======================================"
echo "Running port scan attacks..."
bash /scripts/port_scan.sh

echo "======================================"
echo "Running web attacks..."
bash /scripts/web_attacks.sh

echo "======================================"
echo "Running FTP attacks..."
bash /scripts/ftp_attacks.sh

echo "======================================"
echo "Running DoS simulation..."
bash /scripts/dos_simulation.sh

echo "======================================"
echo "All attack simulations complete!"
echo "Check the logs to analyze the results."
echo "======================================"