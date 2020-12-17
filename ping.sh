#! /bin/bash

if  [[ $1&&$2 ]];then
    if sudo ls /run/netns | grep $1 > /dev/null
        then
        sudo ip netns exec $1 ping $2 -c 5
    else
        sudo ip netns add $1
        echo "Incorrect NetNS!"
    fi
else
    echo "Few argumetns!"
fi


