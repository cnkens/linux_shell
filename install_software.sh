#!/bin/bash
result=`cat /etc/os-release | grep "^NAME" | awk -F'"' '{print $2}' | awk '{print $1}'`
case ${result} in 
	"CentOS")
		soft_centos=`rpm -qa | grep dos2unix`
		if [ ${soft_centos} -eq 1 ];then
			exit 1
		else 
			yum -y install dos2unix
		fi
		;;
	"Debian")
		soft_debian=`dpkg -l | grep dos2unix`
		if [ ${soft_debian} -eq 1 ];then
			exit 1
		else 
			apt install -y dos2unix
		fi
		;;
	"Ubuntu")
		soft_ubuntu=`dpkg -l | grep dos2unix`
		if [ ${soft_ubuntu} -eq 1 ];then
			exit 1
		else 
			apt install -y dos2unix
		fi
		;;
	*)
    	echo "error"
    	exit 1 
    	;;
esac