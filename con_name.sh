#!/bin/bash

# Script to create container Network Namespaces 
sudo ip netns add $1
echo "Container $1 successfully created!"
