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
1. Copy and paste all the data from `ss-setup.sh`
1. Replace `<server_ip>` with your server ip
1. Replace `<password>` with your password you're going to use to connect to your shadowsocks server
1. Run `bash ss-setup.sh` ***Note: the server will be rebooted***

## Additional commands
- To check if your shadowsocks server is running use `sudo systemctl status shadowsocks-libev-server@config`

