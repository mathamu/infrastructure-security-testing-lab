#!/bin/bash

# ==============================================================================
# Script Name    : recon_automator.sh
# Description    : Automated Nmap Service Discovery & Vulnerability Scanning
# Author         : Paduka (Infrastructure Security Lab)
# Usage          : ./recon_automator.sh <target_ip_or_range>
# ==============================================================================

TARGET=$1

# Check if target is provided
if [ -z "$TARGET" ]; then
    echo "[-] Error: No target specified."
    echo "[*] Usage: $0 <target_ip_or_range>"
    exit 1
fi

echo "=========================================================="
echo "[+] Starting Infrastructure Reconnaissance on: $TARGET"
echo "[+] Start Time: $(date)"
echo "=========================================================="

# Create output directory if it doesn't exist
mkdir -p ../samples

# Step 1: Fast Port Scan
echo "[*] Phase 1: Identifying open ports (Top 1000)..."
nmap -Pn -T4 --open -oN ../samples/nmap_fast_scan.txt $TARGET

# Step 2: Service Version & Default Script Scanning
# -sV: Version detection
# -sC: Default NSE scripts
# -p-: Scan all 65535 ports (Deep Scan)
echo "[*] Phase 2: Detailed Service & Banner Grabbing..."
nmap -sV -sC -Pn -T4 -p- -oN ../samples/nmap_detailed_scan.txt $TARGET

# Step 3: Vulnerability Script Scanning (Safe Scripts Only)
echo "[*] Phase 3: Running non-intrusive vulnerability scripts..."
nmap -sV --script=vulners,http-enum -Pn -oN ../samples/nmap_vuln_check.txt $TARGET

echo "=========================================================="
echo "[+] Reconnaissance Complete!"
echo "[+] Results saved in the 'samples/' directory."
echo "[+] End Time: $(date)"
echo "=========================================================="