# NMAP-Automatisation-
NMAP Automatisation 

This bash script provides a security audit of a given IP address. It runs an nmap scan on the target IP address and saves the scan results to a file. It then extracts the open port information from the scan results and searches for exploits for the open ports using searchsploit. The script also searches for exploits for specified ports and saves the results to a file. Finally, it outputs the number of vulnerabilities found.

# How to use it

To save a bash script, you need to create a text file with the desired commands and save it with a .sh extension. For example, you can create a file called port_scanner.sh and add the contents of the script. To make the file executable, run the following command in terminal:
### chmod +x port_scanner.sh

To run the script, you can now specify the target IP address directly in the terminal, like this:
### ./port_scanner.sh

At the promp insert the Target IP:
### [target_ip_address]
