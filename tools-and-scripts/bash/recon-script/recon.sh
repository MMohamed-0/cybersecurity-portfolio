#!bin/bash

 #  Simple automated reconaissnce script
 #  Author: Mohamed Mohamed
 #  Usage: bash recon.sh  < Target >

TARGET=$1
OUTPUT_DIR="recon-results-$TARGET"

if [ -z "$TARGET" ]; then
  echo "Usage: $0 <target>"
  exit 1
fi

mkdir $OUTPUT_DIR

echo "[+] Starting reconnaissance on $TARGET"

echo "[+] Pinging target ..."
ping -c 4 $TARGET > $OUTPUT_DIR/ping.txt

echo "[+] Running nmap scan..."
nmap -sS -Pn $TARGET > $OUTPUT_DIR/nmap.txt

echo "[+] Running whois..."
whois $TARGET > $OUTPUT_DIR/nslookup.txt

echo "[+] Reconnaissance complete."
echo "[+] Results saved in $OUTPUT_DIR"

