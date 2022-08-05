# Shadowsocks Setup Script
## Recommended system requirements
- Ubuntu(20.04)
## Recommended steps
1. Launch as root
1. Upgrade your system
    - `sudo apt update && apt upgrade -y`
1. Install snapd(if not installed)
    - `sudo apt install -y snapd`
1. Reboot and wait for couple seconds
    - `sudo reboot`
1. Add script
    - `nano ss-setup.sh`
1. You can either `git clone` this repo or manually copy all the data from `ss-script.sh` and run it 
1. Run the script with two arguments, where the first one is your server ip and the second one is your password
1. Run `bash ss-setup.sh <server_ip> <password>` ***Note: the server will be rebooted***

## Additional commands
- To check if your shadowsocks server is running use `sudo systemctl status shadowsocks-libev-server@config`

