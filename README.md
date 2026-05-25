A simple bash script to update and clean a Ubuntu system in one command.

What it does?
- checks internet connection  
- runs system update  
- upgrades installed packages  
- removes unused packages  

Requirements" 
- apt package manager  
- sudo access  
- internet access  

Installation
Move the script into your PATH and not into /bin or other such sensitive folders which can break your system.

sudo mv sysup.sh /usr/local/bin/sysup
sudo chmod +x /usr/local/bin/sysup


To run it:
type the command:"sysup" in the terminal
