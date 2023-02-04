# NMAP Automatisation
This bash script provides a security audit of a given IP address. It runs an nmap scan on the target IP address and saves the scan results to a file. The script also searches for exploits for specified open ports and saves the results to a file. Finally, it outputs the number of vulnerabilities found.

### Getting Started
Save the bash script as a text file with a .sh extension. For example, you can create a file called **port_scanner.sh** and add the contents of the script.
Make the file executable by running the following command in the terminal:

`chmod +x port_scanner.sh`

To run the script, specify the target IP address directly in the terminal:

`./port_scanner.sh`

At the prompt, insert the target IP address:

`Target IP: [target_ip_address]`
