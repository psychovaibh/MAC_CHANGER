#!/bin/bash

#check for root user

if [ $(id -u) -ne 0 ]; then
  echo "This script need to be run as root" 1>&2;
  exit 1
fi

sleep 1
echo " "
echo "~~~~~~~~~~~~~~~~~~~~~~~~"
echo "This is your interface!!"
echo "~~~~~~~~~~~~~~~~~~~~~~~~"
echo " "

#Display the interface avilable on pc and their respective mac address

ip link show |awk '/^[0-9]+:/{interface_name=$2} /link/{print interface_name, $2}'


echo " "
echo " "

while true; do

  read -p "Choose your interface: " user_interface

  interface_match=false

  while read interface_name; do
    if [ "$interface_name" = "$user_interface" ];then
      interface_match=true
      break
    fi
  done < <(ip link show | awk '/^[0-9]+:/{interface_name=$2; gsub(":", "", interface_name); print interface_name}')


  if [ "$interface_match" = false ];then
    echo " "
    echo "***********************************************"
    echo "*  Please enter the correct interface name!!  *"
    echo "***********************************************"
    echo " "
  else
    i_c="$user_interface"
    break
  fi
done

sleep 1


if [ "$i_c" = "lo" ];then
  echo "This is reserved mac it can't be changed"
  exit 1
else
  sudo ifconfig $i_c down
  sleep 1

  #mac changer logic

  mac=$(printf '52:54:00:%02x:%02x:%02x' $((RANDOM%256)) $((RANDOM%256)) $((RANDOM%256)))


  echo "$mac"

  sudo ifconfig $i_c hw ether $mac

  sudo ifconfig $i_c up


  echo " "
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo "MAC Changed to: $mac"
  echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  echo " "
  ip link show | awk '/^[0-9]+:/{interface_name=$2} /link/{print interface_name, $2}'
fi
