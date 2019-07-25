#!/bin/bash
result=`cat /etc/os-release | grep "^NAME" | awk -F'"' '{print $2}' | awk '{print $1}'`

case ${result} in 
	"CentOS")
		echo "是Centos"
		;;
	"Debian")
		echo "是Debian"
		;;
	"Ubuntu")
		echo "是Ubuntu"
		;;
	"Red")
		echo "是Red Hat Enterprise Linux"
		;;
	*)
    	echo "Your choose is error!"
    	exit 1 
    	;;
esac
