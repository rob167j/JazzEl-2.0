#!/bin/bash
sudo apt update
sudo apt install -y python3 python3-pip

pip3 install -r requirements.txt --break-system-packages

sudo tee /etc/systemd/system/jazzel.service > /dev/null <<EOF
[Unit]
Description=Jazz-El Master Service
After=network.target

[Service]
ExecStart=/usr/bin/python3 /home/ubuntu/JazzEl-2.0/jazzel_master_control.py
Restart=always
User=ubuntu

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl daemon-reload
sudo systemctl enable jazzel
sudo systemctl start jazzel

echo "Jazz-El Setup Complete."
