#!/bin/bash

sudo apt install collectd -y
sudo mv /etc/collectd/collectd.conf /etc/collectd/collectd.conf.ORIG

sudo cat << 'EOF' > /etc/collectd/collectd.conf
FQDNLookup true
LoadPlugin cpu
LoadPlugin disk
LoadPlugin load
LoadPlugin memory
LoadPlugin network
LoadPlugin processes
LoadPlugin swap
LoadPlugin users
<Plugin network>
        Server "192.168.0.22" "25826"
</Plugin>
EOF

sudo systemctl daemon-reload
sudo systemctl enable collectd
sudo systemctl start collectd

