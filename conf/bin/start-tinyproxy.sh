#!/bin/bash

# Create a temporary config file for tinyproxy
TINYPROXY_CONF=$(mktemp)
cat > "$TINYPROXY_CONF" <<EOF
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

# Run tinyproxy with the generated config file
exec tinyproxy -d -c "$TINYPROXY_CONF"
