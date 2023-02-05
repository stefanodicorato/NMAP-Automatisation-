# NMAP Automatisation
This bash script provides a security audit of a given IP address. It runs an nmap scan on the target IP address and saves the scan results to a file. The script also searches for exploits for specified open ports and saves the results to a file. Finally, it outputs the number of vulnerabilities found.

### Getting Started

####This script is a bash script that performs various security scans on a target IP address specified by the user. The script does the following:

- Prompts the user to enter a target IP address.
- Creates a folder with the target IP address as its name.
- Runs an nmap scan on the target IP and saves the results in a file within the folder.
- Extracts open port information from the nmap scan results and saves it to a file within the folder.
- Searches for exploits in Searchsploit for each open port and saves the results to a file within the folder.
- Loops through specified ports and checks for exploits in Searchsploit for a set of services and versions and saves the results to a file within the folder.
- Notifies the user to check the folder for more details.

Save the bash script as a text file with a .sh extension. For example, you can create a file called **port_scanner.sh** and add the contents of the script.
Make the file executable by running the following command in the terminal:

`chmod +x port_scanner.sh`

To run the script, specify the target IP address directly in the terminal:

`./port_scanner.sh`

At the prompt, insert the target IP address:

`Target IP: [target_ip_address]`
