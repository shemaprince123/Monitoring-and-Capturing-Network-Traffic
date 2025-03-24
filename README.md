# Monitoring-and-Capturing-Network-Traffic
# TechStart Security Monitoring Project

## Network Packet Capture and Analysis Across Different Ports

This repository contains the implementation of a comprehensive network security monitoring system designed for TechStart Solutions, a simulated small tech startup with 25 employees. The project uses Docker-based virtualization to create isolated environments for monitoring, capturing, and analyzing network traffic across different ports.

## Project Overview

This project demonstrates three key security capabilities:
1. Understanding the role of ports in network security
2. Mastering network packet capture techniques
3. Developing skills in analyzing and responding to security threats

The implementation uses Docker containers to simulate a small business network, with specific focus on monitoring HTTP (port 80) and FTP (port 21) traffic.

## Repository Structure

```
techstart-security/
├── docker-compose.yml              # Main Docker configuration
├── docker-compose-simple.yml       # Simplified Docker configuration
├── web_content/                    # Web server content
│   └── index.html                  # Sample web page
├── ftp_data/                       # FTP server content
│   └── public/                     # Public FTP directory
│       └── welcome.txt             # Welcome message
├── attack_scripts/                 # Attack simulation scripts
│   ├── port_scan.sh                # Port scanning script
│   ├── web_attacks.sh              # Web attack script
│   ├── ftp_attacks.sh              # FTP attack script
│   ├── dos_simulation.sh           # DoS simulation script
│   └── run_all_attacks.sh          # Master attack script
├── suricata_rules/                 # IDPS rule configurations
│   └── custom.rules                # Custom detection rules
├── suricata_logs/                  # IDPS log files
│   └── idps.log                    # Simulated IDPS logs
├── pcap_files/                     # Packet capture files
│   ├── capture.log                 # Simulated packet logs
│   ├── analysis_report.txt         # Traffic analysis report
│   └── latest_analysis.txt         # Current analysis report
└── mail_config/                    # Mail server configuration
    └── postfix-main.cf             # Mail server config file
```

## Technologies Used

- **Docker**: Container virtualization platform
- **Apache HTTP Server**: Web server (port 80/443)
- **Pure-FTPd**: FTP server (port 21)
- **Alpine Linux**: Lightweight containers for monitoring
- **tcpdump**: Network packet capture tool
- **Bash Scripting**: Attack simulation and automation
- **Ubuntu**: Attack simulation environment

## Setup Instructions

### Prerequisites

- Docker Engine (20.10.x or higher)
- Docker Compose (2.x or higher)
- 4GB RAM minimum for Docker containers
- 10GB available disk space

### Installation & Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/yourusername/techstart-security.git
   cd techstart-security
   ```

2. Start the Docker environment:
   ```bash
   docker-compose -f docker-compose-simple.yml up -d
   ```

3. Verify all containers are running:
   ```bash
   docker ps
   ```

### Running Attack Simulations

1. Make attack scripts executable:
   ```bash
   docker exec -it attack_simulator chmod +x /scripts/*.sh
   ```

2. Run the attack simulation:
   ```bash
   docker exec -it attack_simulator /scripts/run_all_attacks.sh
   ```

3. View web server logs to see attack patterns:
   ```bash
   docker logs techstart_web
   ```

4. View the security analysis report:
   ```bash
   docker exec -it techstart_capture cat /captures/latest_analysis.txt
   ```

## Security Features Demonstrated

### Port Monitoring

- **Port 80 (HTTP)**: Web traffic monitoring and attack detection
- **Port 21 (FTP)**: File transfer protocol monitoring and authentication attacks
- **Multiple Ports**: Port scanning detection and service enumeration

### Attack Simulations

- Port scanning (reconnaissance)
- Directory traversal attacks
- SQL injection attempts
- Cross-site scripting (XSS)
- Brute force login attacks
- Denial of Service (DoS) simulation

### Security Analysis

- Traffic pattern analysis
- Attack detection and categorization
- Alert generation and notification
- Security recommendations

## Learning Outcomes

This project demonstrates:

1. **Port-specific Monitoring**: How different network services expose unique attack surfaces
2. **Traffic Analysis**: Identifying malicious patterns in network traffic
3. **Security Response**: Generating alerts and developing appropriate countermeasures

## Limitations & Future Improvements

- This is a simulated environment for educational purposes
- The monitoring is simplified compared to production-grade tools
- Future improvements could include:
  - Integration with real IDPS systems like Snort or Suricata
  - Implementation of machine learning for anomaly detection
  - Real-time notification via email or messaging platforms

## Acknowledgments

- This project was developed as an educational exercise
- Inspired by NIST Special Publication 800-94, "Guide to Intrusion Detection and Prevention Systems"

## Copyright
© 2025 Shema Prince 🤴. All rights reserved.
