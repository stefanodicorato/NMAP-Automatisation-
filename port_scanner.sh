#!/bin/bash

# Prompt user for target IP address
read -p "Enter target IP address: " target

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
printf "\r[✔️] Scan complete\n"

# Extract open port information from nmap scan results
grep -E "open.*[0-9]+/tcp" "$folder/nmap_scan_results.txt" | awk '{print $1 " " $NF}' > "$folder/open_ports.txt"

# Create the file searchsploit_results.txt
touch "$folder/searchsploit_results.txt"

# Loop through each open port and search for exploits in searchsploit
while read line; do
  port=$(echo $line | awk '{print $1}')
  version=$(echo $line | awk '{print $2}')
  result=$(searchsploit $port $version)
  if [ -z "$result" ]; then
    echo "No results found for $port $version" >> "$folder/searchsploit_results.txt"
  else
    echo "Results found for $port $version: " >> "$folder/searchsploit_results.txt"
    echo "$result" >> "$folder/searchsploit_results.txt"
  fi
done < "$folder/open_ports.txt"

# Loop through the specified ports and check for exploits
for port in $(echo 21 22 25 26 53 80 110 143 443 465 587 993 995 2222 3306 5432); do
  service=$(grep $port/tcp "$folder/nmap_scan_results.txt" | awk '{print $4}')
  version=$(grep $port/tcp "$folder/nmap_scan_results.txt" | awk '{print $5}')
  result=$(searchsploit $service $version)
  if [ -z "$result" ]; then
    echo "No results found for $service $version on port $port" >> "$folder/searchsploit_results.txt"
  else
    echo "Results found for $service $version on port $port: " >> "$folder/searchsploit_results.txt"
    echo "$result" >> "$folder/searchsploit_results.txt"
  fi
done

# Count the number of vulnerabilities found
count=$(grep -c "Results found" "$folder/searchsploit_results.txt")

# Output the count of vulnerabilities found
echo "Number of vulnerabilities found: $count"

# Automatically open the folder
# xdg-open
