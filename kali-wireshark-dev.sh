#!/bin/sh

# Kali Linux Version 1.1.0
#
# This script loads the development version of Wireshark instead of using the
# pre-installed version on Kali Linux.  The pre-installed version is usually
# multiple versions outdated.

apt-get update && apt-get -y dist-upgrade && apt-get -y install autoconf automake libtool qt-sdk libgtk-3-dev

# The following line should be updated with newer versions of the Kali
# Linux headers as they become available.
apt-get -y install linux-headers-3.18.0-kali1-all

cd ~
mkdir src
cd src

# Load the development version of libpcap
git clone https://github.com/the-tcpdump-group/libpcap.git
cd libpcap
./configure && make && make install
cd ..

# Load the development version of Wireshark
git clone https://code.wireshark.org/review/wireshark
cd wireshark
./autogen.sh && ./configure && make && make install
cd ..
