#!/bin/bash

# Redirect port 80 (http) to 3000 (http server)
# Allows express server to be run as regular user for security measures

sudo iptables -t nat -D PREROUTING 1
sudo iptables -t nat -A PREROUTING -p tcp --dport 80 -j REDIRECT --to-ports 3000

nohup node index.js &> chat.log &
