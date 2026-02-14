#!/bin/bash

#Test SSH connection
ssh user@192.168.0.121

#Test HTTP port
nc -zv 192.168.0.121 80

#Test ping
ping -c 3 192.168.0.121

