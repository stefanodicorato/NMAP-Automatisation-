#!/bin/bash
echo "
#################################################################################################################################################################
                                                                                                                                                        
                                                      ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣾⣿⣿⣿⣿⣶⣶⣶⣤⣤⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                             
                                                    ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                             
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀                                              
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠛⠉⠀⠀⠀⠀⠀⠀⠀⠀⠈⠙⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢰⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⣿⣿⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡄⠀⠀⠀⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣿⣿⠿⠿⠿⠿⣿⣦⣄⠀⠀⠀⠀⠀⢼⣿⣿⡿⠋⠉⠀⠈⢙⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣾⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠈⠙⠛⠁⠀⠀⠀⢀⣼⠟⠋⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣷⣶⣾⣿⣿⣷⣶⣄⠀⠀⠀⠀⠸⠃⣠⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠿⢿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠻⠿⣿⣿⣿⠿⠟⠋⠉⢻⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⠁⠀⠀⠈⠉⠉⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⣿⣿⣿⣿⣷⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣧⣄⣀⣀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠤⢤⣤⣤⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⡉⠁⠀⠀⠰⣤⣀⠀⠀⢀⣴⡶⠀⠀⠀⠀⣿⣿⡏⢸⣿⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⣿⣿⣧⠹⣿⣷⣤⣀⣀⣀⣼⣿⣿⣿⣿⣿⣦⣀⣤⣤⣾⣿⡟⢀⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⣿⣿⣿⣧⠘⣿⡿⠿⠿⠿⣿⣿⣇⣀⣹⣿⠿⠿⠟⠛⣿⡟⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣿⣷⡘⢿⡶⢤⣀⣀⣀⣉⣉⣁⣀⣀⣠⣴⣾⡟⢁⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡌⠁⠀⠀⠈⠻⣿⣿⣿⡟⠛⠉⢹⠟⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣄⡀⠀⠀⠀⠀⠀
                                                  ⠀⠀⠀⠀⠀⢀⣀⣤⣴⣶⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠈⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣶⣶⣤
                                                  ⢀⣤⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡀⠀⠀⢻⣿⣿⡇⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                                                  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣄⣸⣿⣿⣧⣤⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                                                  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                                                  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                                                  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                                                  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿
                                                  ⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿

                                                                                                                                                               
#                                                                          NMAP AUTOMATION                                                                      #
#                                                                                                                                                               #
# This bash script provides a security audit of a given IP address. It runs an nmap scan on the target IP address and saves the scan results to a file.         #
# The script also searches for exploits for specified open ports and saves the results to a file. Finally, it outputs the number of vulnerabilities found.      #
#                                                                                                                                                               #
#                                                                         Getting Started                                                                       #
#                                                                                                                                                               #
# 1. Prompts the user to enter a target IP address or URL                                                                                                       #                       
# 2. Converts the URL to IP if necessary                                                                                                                        #
# 3. Creates a folder with the target IP address as its name                                                                                                    #
# 4. Runs an nmap scan on the target IP and saves the results in a file within the folder                                                                       #
# 5. Extracts open port information from the nmap scan results and saves it to a file within the folder                                                         #
# 6. Searches for exploits in Searchsploit for each open port and saves the results to a file within the folder                                                 #
# 7. Notifies the user to check the folder for more details                                                                                                     #
#                                                                                                                                                               #
#    To use the script:                                                                                                                                         #      
#                                                                                                                                                               #
# 1. Save the script as a text file with a .sh extension                                                                                                        #
# 2. Make the file executable by running the command chmod +x [filename].sh in the terminal                                                                     #
# 3. Run the script by specifying the target IP address directly in the terminal: ./[filename].sh                                                               # 
# 4. Enter the target IP address when prompted.    e.g., 62.241.216.11                                                                                          #
#                                                                                                                                                               #
#################################################################################################################################################################

"
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
printf "\n\n[✔️] Vulnerability report generation in progress\n\n"

# Create the markdown file for the vulnerability report
report="$folder/vulnerability_report.md"
echo "# Vulnerability Report" > $report
echo "" >> $report

# Add hostname section
echo "## Hostname" >> $report
echo "" >> $report
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
echo "| Port | State | Service | Version |" >> $report
echo "|------|-------|---------|---------|" >> $report
while IFS= read -r line; do
    if echo $line | grep -E ".*[0-9]+/tcp.*open" > /dev/null; then
        port=$(echo $line | awk '{print $1}')
        state=$(echo $line | awk '{print $2}')
        service=$(echo $line | awk '{print $3}')
        version=$(echo $line | awk '{print $4" "$5" "$6" "$7}')
        echo "| $port | $state | $service | $version |" >> $report
    fi
done < "$folder/nmap_scan_results.txt"
echo "" >> $report

# Remove the string "Pure-FTPd" from the results
sed 's/Pure-FTPd//g' "$folder/searchsploit_results.txt" > "$folder/searchsploit_results_modified.txt"

# Remove the string "Pure-FTPd" from the results
grep -v "Pure-FTPd" "$folder/searchsploit_results.txt" > "$folder/searchsploit_results_modified.txt"

# Add Exploit Search Results section
echo "## Exploit Search Results" >> $report
echo "" >> $report
echo "The following results were found in the exploit search:" >> $report
echo "" >> $report
cat "$folder/searchsploit_results_modified.txt" >> $report



# Add completion message
printf "\n\n[✔️] Completed\n\n"
echo "Please check the file named $report for more details"



