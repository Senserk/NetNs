#!/bin/bash

#Script for delete Network interfaces

if [[ $1 && $2 ]];then

        sudo ip link del $1  
        echo "Delete interface $1 linked with $2"

else
    echo "You should input name of interfaces"
fi




