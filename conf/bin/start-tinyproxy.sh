#!/bin/bash

# Create a temporary config file for tinyproxy
cat <<EOF > /tmp/tinyproxy.conf
LogLevel Debug
MaxClients 5
MinSpareServers 5
MaxSpareServers 20
StartServers 10
Port 8000
ReverseOnly Yes
Upstream http localhost:8080
PreserveHostHeader Yes
EOF

# Run tinyproxy with the generated config file in the background
tinyproxy -d -c /tmp/tinyproxy.conf &
