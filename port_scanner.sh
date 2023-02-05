#!/bin/bash

# Prompt user for target URL or IP address
read -p "Enter target URL or IP address: " target
printf "\n"

# Get IP address from URL
if [[ $target =~ ^[a-zA-Z]+:// ]]; then
  target_ip=$(nslookup "${target#://}" | awk '/^Address: / { print $2 }')
else
  target_ip="$target"
fi

# Create a folder with the target IP address
folder="$target"
if [ -d "$folder" ]; then
  rm -rf "$folder"
fi
mkdir "$folder"

# Run nmap scan and save output to a file
nmap -sV $target > "$folder/nmap_scan_results.txt" &
pid=$!
spin='-\|/'

i=0
while kill -0 $pid 2>/dev/null
do
  i=$(( (i+1) %4 ))
  printf "\r[%c] Scan in progress...Please wait" "${spin:$i:1}"
  sleep .1
done
printf "\r[✔️] Scan complete\n\n"

# Extract open port information from nmap scan results
grep -E ".*[0-9]+/tcp.*open" "$folder/nmap_scan_results.txt" | awk '{print $1 " " $NF}' > "$folder/open_ports.txt"

# Create the file searchsploit_results.txt
touch "$folder/searchsploit_results.txt"

# Create the file security_headers_results.txt
touch "$folder/security_headers_results.txt"

# Loop through each open port and search for exploits in searchsploit
while read line; do
  port=$(echo $line | awk '{print $1}')
  version=$(echo $line | awk '{print $2}')
  result=$(searchsploit $port $version)
 if [ -z "$result" ] || echo "$result" | grep -q 'Exploits: No Results'; then
    echo "No results found for $port $version" >> "$folder/searchsploit_results.txt"
else
    echo "Results found for port $port and version $version: " >> "$folder/searchsploit_results.txt"
    echo "$result" >> "$folder/searchsploit_results.txt"
fi

done < "$folder/open_ports.txt"
printf "\r[✔️] Folders created...Please wait"

# Loop through the specified ports and check for exploits
for port in $(echo 21 22 25 26 53 80 110 143 443 465 587 993 995 2222 3306 5432); do
  service=$(grep $port/tcp "$folder/nmap_scan_results.txt" | awk '{print $4}')
  version=$(grep $port/tcp "$folder/nmap_scan_results.txt" | awk '{print $5}')
  result=$(searchsploit $service $version)
#  if [ -z "$result" ] || echo "$result" | grep -q 'Exploits: No Results'; then
#     echo "No results found for $port $version" >> "$folder/searchsploit_results.txt"
# else
    echo "Results found for port $port and version $version: " >> "$folder/searchsploit_results.txt"
    echo "$result" >> "$folder/searchsploit_results.txt"
# fi

done
printf "\n\n[✔️] Vulnerability report generated"
# Create the markdown file for the vulnerability report
report="$folder/vulnerability_report.md"
echo "# Vulnerability Report" > $report
echo "" >> $report
# Add hostname section
echo "## Hostname" >> $report
echo "" >> $report
# hostname=$(host "$target" | awk '/^.* has address/ { print $NF }')
# echo "The hostname for the target IP address is: $hostname" >> $report
hostname=$(nslookup "$target" | awk '/^Name: / { print $NF }')
echo "The hostname for the target IP address is: $hostname" >> $report
echo "" >> $report
# Add target IP address section
echo "## Target IP Address" >> $report
echo "" >> $report
echo "The target IP address is: $target" >> $report
echo "" >> $report
# Add Nmap scan results section
echo "## Nmap Scan Results" >> $report
echo "" >> $report
echo "The following open ports were found in the Nmap scan:" >> $report
echo "" >> $report
echo "| Port | Service | Version |" >> $report
echo "|------|---------|---------|" >> $report
grep -E ".*[0-9]+/tcp.*open" "$folder/nmap_scan_results.txt" | awk '{print "| "$1" | "$4" | "$5" |" $NF}' >> $report
echo "" >> $report
echo "## Exploit Search Results" >> $report
echo "" >> $report
echo "The following results were found in the exploit search:" >> $report
echo "" >> $report
cat "$folder/searchsploit_results.txt" >> $report
printf "\n\n[✔️] Completed\n\n"
echo "Please check the file named $report for more details"








