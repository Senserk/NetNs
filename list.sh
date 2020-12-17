#!/bin/bash

if [ $1 ]
	then
        echo "Interfaces are: "
	sudo ip netns exec $1 ip link list
else 
	echo "No argument!"
fi   
