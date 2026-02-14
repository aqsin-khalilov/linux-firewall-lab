#!/bin/bash

#Install and start Firewalld
sudo dnf install firewalld -y
sudo systemctl enable --now firewalld

#Allow SSH from a specific IP
sudo firewall-cmd --add-rich-rule='rule family="ipv4" source address="192.168.0.108" port port ="22" protocol="tcp" accept' --permanent

#Block Http globally
sudo firewall-cmd --remove-service=http --permanent

#Allow ping
sudo firewall-cmd --add-icmp-block-inversion=no --permanent

#Reload firewall
sudo firewall-cmd --reload

echo "Firewall configured successfully."

