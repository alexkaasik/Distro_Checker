#!/bin/bash

Distro=$(cat /etc/*-release | grep "^ID=")
Distro=$(echo "$Distro" | sed -r 's/[ID=]+//g')

for ((i = 0 ; i <= 1; i++)); do
        case $Distro in
        	arch)
        		echo "Arch"
			break
			;;
        	fedora)
        		echo "Fedora"
			break
			;;
        	debian)
        		echo "Debian"
			break
			;;
		ubuntu)
			echo "Ubuntu/Debian"
			break
			;;
        	*)
        		echo "$Distro was based on"
			Distro=$(cat /etc/*-release | grep "^ID_LIKE=")
			Distro=$(echo "$Distro" | sed -r 's/[ID_LIKE=]+//g')
			;;
        esac
done
