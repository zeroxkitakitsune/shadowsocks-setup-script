#!/bin/bash
snap install shadowsocks-libev
mkdir -p /var/snap/shadowsocks-libev/common/etc/shadowsocks-libev
echo "{
    \"server\":\"$1\",
    \"server_port\":443,
    \"local_port\":1080,
    \"password\":\"$2\",
    \"timeout\":20,
    \"method\":\"chacha20-ietf-poly1305\",
    \"fast_open\":true,
    \"nameserver\":\"1.1.1.1\",
    \"mode\":\"tcp_and_udp\"
}" >> /var/snap/shadowsocks-libev/common/etc/shadowsocks-libev/config.json
echo "
[Unit]
Description=Shadowsocks-Libev Custom Server Service for %I
Documentation=man:ss-server(1)
After=network-online.target

[Service]
Type=simple
ExecStart=/usr/bin/snap run shadowsocks-libev.ss-server -c /var/snap/shadowsocks-libev/common/etc/shadowsocks-libev/%i.json

[Install]
WantedBy=multi-user.target
" >> /etc/systemd/system/shadowsocks-libev-server@.service
sudo systemctl enable --now shadowsocks-libev-server@config
reboot
