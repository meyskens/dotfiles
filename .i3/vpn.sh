#!/bin/bash

function checkStatus {
	ip link show dev tun0 > /dev/null
	case $? in
	  0) echo '<span foreground="green">VPN ON: '$(curl myip.ninja)'</span>' ;;
	  *) echo '<span foreground="red">VPN OFF</span>' ;;
	esac
}

function onOff {
        echo '<span foreground="orange">TOGGLING</span>';
	ip link show dev tun0 > /dev/null
        case $? in
          0) cd /home/maartje/.i3/vpn && docker-compose down >/dev/null ;;
          *) cd /home/maartje/.i3/vpn && docker-compose run -d vpn client.ovpn ;;
        esac
}

case $BLOCK_BUTTON in
    1) onOff  ;;
    *) checkStatus ;;
esac

