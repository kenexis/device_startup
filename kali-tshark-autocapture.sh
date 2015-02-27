#!/bin/sh

# This script loads the tshark_autocapture script into the /etc/init.d
# directory and configures the system to run it properly in Kali Linux.

cp tshark_autocapture /etc/init.d
chmod +x /etc/init.d/tshark_autocapture
update-rc.d tshark_autocapture defaults
