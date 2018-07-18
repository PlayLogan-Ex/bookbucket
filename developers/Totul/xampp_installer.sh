#!/bin/bash

lampp="/opt/lampp/lampp"
# read cmd
# Check if lampp is available or not
if [ $# -e "$lampp" ]; then
    sudo "$lampp" start
    sudo "$lampp" stop
else
    wget -O xampp.run https://downloadsapachefriends.global.ssl.fastly.net/xampp-files/7.2.7/xampp-linux-x64-7.2.7-0-installer.run?from_af=true
    sudo chmod 755 xampp.run
    sudo ./xampp.run
fi