#! /bin/bash

#Script is creating two interfaces with a link

if  [[ $1 && $2 ]];then
    if sudo ls /sys/class/net | grep $1 > /dev/null
        then
        echo "This interface already created!"
    else
        sudo ip link add $1 type veth peer name $2
        echo "Interfaces $1 and $2 with a link successfully created!"
    fi
else
    echo "No arguments for creating interfaces!"
fi

