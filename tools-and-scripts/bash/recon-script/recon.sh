#!bin/bash

 #  Simple automated reconaissnce script
 #  Author: M.Mohamed
 #  Usage: bash recon.sh  < Target >

TARGET=$1
OUTPUT_DIR="recon-report-$TARGET"
REPORT="$OUTPUT_DIR/report.md"

if [ -z "$TARGET" ]; then
echo "Usage: $0 <target>"
exit 1
fi

mkdir -p "$OUTPUT_DIR"

{
echo "================================"
echo " Reconnaissance Report"
echo " Target: $TARGET"
echo " Date: $(date)"
echo "================================"
echo ""
} > "$REPORT"

echo "[+] Starting reconnaissance on $TARGET"

{
echo "[+] Ping Results"
echo '```'
ping -c 4 "$TARGET" 2>&1 || echo "[!] Ping failed"
echo '```'
echo ""
echo "---"
echo ""
} >> "$REPORT"

{
echo "[+] Nmap Results"
echo '```'
nmap -sS -Pn "$TARGET" 2>&1 || echo "[!] Nmap failed"
echo '```'
echo ""
echo "---"
echo ""
} >> "$REPORT"

{
echo "[+] Whois Information"
echo '```'
whois "$TARGET" 2>&1 || echo "[!] Whois failed"
echo '```'
echo ""
echo "---"
echo ""
} >> "$REPORT"

{
echo "[+] NsLookup Results"
echo '```'
nslookup "$TARGET" 2>&1 || echo "[!] Nslookup failed"
echo '```'
echo ""
} >> "$REPORT"

echo "[+] Reconnaissance complete."
echo "[+] Report saved in $REPORT"
