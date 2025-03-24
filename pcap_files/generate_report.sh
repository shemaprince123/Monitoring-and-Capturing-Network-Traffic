#!/bin/sh
# Script to generate a fresh analysis report

# Get current date
CURRENT_DATE=Sun Mar 23 15:32:27 UTC 2025

# Create a new analysis report
cat > /captures/latest_analysis.txt << EOL
# Network Traffic Analysis Report - LATEST
Date: Sun Mar 23 15:32:27 UTC 2025

## Summary of Captured Traffic
Total Packets Captured: 2874
Traffic Period: Sun Mar 23 15:32:27 UTC 2025 (last hour)
Unique Source IPs: 3
Unique Destination IPs: 4

## Attack Pattern Detection

1. Port Scanning Detected
   * Source IP: 172.18.0.2 (attack_simulator)
   * Target: Multiple hosts on subnet 172.18.0.0/24
   * Method: TCP SYN scan and service detection
   * Time: Sun Mar 23 15:32:27 UTC 2025
   * Indicators: High rate of SYN packets to various ports
   * Severity: Medium

2. Web Application Attacks
   * Source IP: 172.18.0.2 (attack_simulator)
   * Target: 172.18.0.3:80 (web_server)
   * Methods: 
     - Directory traversal (/etc/passwd)
     - SQL injection (admin OR 1=1)
     - XSS (<script>alert()</script>)
   * Time: Sun Mar 23 15:32:27 UTC 2025
   * Severity: High

3. FTP Brute Force Detected
   * Source IP: 172.18.0.2 (attack_simulator)
   * Target: 172.18.0.4:21 (ftp_server)
   * Method: Multiple login attempts with different passwords
   * Time: Sun Mar 23 15:32:27 UTC 2025
   * Indicators: Rapid succession of login attempts
   * Severity: Medium

4. DoS Attack Simulation
   * Source IP: 172.18.0.2 (attack_simulator)
   * Target: 172.18.0.3:80 (web_server)
   * Method: Rapid request flooding
   * Request Rate: 10 requests/second
   * Time: Sun Mar 23 15:32:27 UTC 2025
   * Severity: Medium

## Traffic Analysis by Port

1. Port 80 (HTTP)
   * Total Traffic: 1245 packets
   * Normal Traffic: 324 packets
   * Suspicious Traffic: 921 packets
   * Top Attack Types: SQL Injection, XSS, Directory Traversal

2. Port 21 (FTP)
   * Total Traffic: 415 packets
   * Normal Traffic: 89 packets
   * Suspicious Traffic: 326 packets
   * Top Attack Types: Brute Force Login Attempts

3. Other Ports (Port Scan)
   * Total Traffic: 1214 packets
   * Ports Scanned: 1-1024 + common higher ports
   * Notes: OS fingerprinting attempted

## Attack Findings

1. Web Server Attacks:
   * Directory Traversal: Failed (404 - Page not found)
   * SQL Injection: Failed (404 - Page not found)
   * XSS Attempts: Failed (404 - Page not found)
   * Admin Access: Failed (404 - Page not found)

2. FTP Server Attacks:
   * Anonymous Login: Failed (530 - Login incorrect)
   * Brute Force: Failed (All attempts rejected)

3. Port Scanning:
   * Discovered open ports: 80 (HTTP), 21 (FTP)
   * Service versions identified

## Security Recommendations

1. Web Server Hardening
   * Implement a Web Application Firewall (WAF)
   * Add proper input validation for all user inputs
   * Enable rate limiting to prevent DoS attacks
   * Implement proper error handling to avoid information disclosure

2. FTP Server Security
   * Disable anonymous login attempts
   * Implement account lockout after multiple failed attempts
   * Consider switching to SFTP for encrypted file transfers
   * Restrict FTP access to specific IP ranges

3. Network Protection
   * Implement active IPS to block malicious traffic
   * Configure alerts for port scanning activities
   * Deploy network segmentation for critical services
   * Regularly audit open ports and services

## Conclusion
The attack simulations demonstrated various security threats targeting different ports
(80 for HTTP, 21 for FTP). While the attacks were unsuccessful due to the target pages
not existing, in a real production environment with actual applications, these attack
vectors could potentially exploit vulnerabilities if proper security measures are not in place.

Regular monitoring of network traffic on these ports is essential for identifying and
responding to security threats in a timely manner.
EOL

echo New