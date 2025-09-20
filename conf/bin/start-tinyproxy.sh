#!/bin/bash

# Print the tinyproxy configuration to stdout
cat <<EOF
LogLevel Debug
MaxClients 5
MinSpareServers 5
MaxSpareServers 20
StartServers 10
Port 8080
ReverseOnly Yes
Upstream http localhost:8080
PreserveHostHeader Yes
EOF
