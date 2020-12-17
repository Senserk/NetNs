#! /bin/bash

if  [[ $1&&$2 ]];then
    if sudo ls /run/netns | grep $1 > /dev/null
        then
        	if sudo ls /sys/class/net | grep $2 > /dev/null
			then
			sudo ip link set $2 netns $1
			echo "The interface $2 successfully connected with netns $1!"
		else
			echo "Incorrect interface!"
		fi
    else
        echo "Incorrect NetNs!"
    fi
else
    echo "Few arguments!"
fi


