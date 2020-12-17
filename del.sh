#! /bin/bash



if [ $1 ];then
    if [ $1 == "all" ]; then
        sudo ip -all netns del 
        echo "Delete all netns"
    else
        sudo ip netns del $1  
        echo "Delete netns $1"
    fi 

else
    echo "You should input name of netns"
fi
