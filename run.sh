#!/bin/bash
PROGRAM="waitress-serve"
#my_ip=$(curl https://ipinfo.io/ip)
if [[ -d "/home/tald/project1/test/" ]]
then
	    echo "Directory ~/project1/test exists."
    else
	        echo "Error: Directory ~/project1/test does not exists."
		exit 1
		fi
	if	[[ -f /home/tald/project1/requirements.txt ]] 
	then
	       	echo "File requirements.txt exist!"
	else
		echo "Error: File requirements.txt does not exists."
		exit 1
	fi

        if ! command -v ${PROGRAM} >/dev/null; 
		  then
			  echo  "$PROGRAM not installed run sudo pip install waitress"
		  else  
			 echo "$PROGRAM is install"
			 
        fi

	my_ip=$(curl -s icanhazip.com)

	echo "************************************************************************************"
	echo "You can now test the application by browsing to this URL: http://${my_ip}:8080/yossi"
	echo "************************************************************************************"
	exit 1
