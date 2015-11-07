#!/bin/bash


name=$1
ip=$2
netid="a685fc00-3a3e-4330-80d5-481b443c1c6e"

nova boot --image ubuntu_1404 --flavor m1.medium --nic net-id=$netid,v4-fixed-ip=$ip --key-name osxueyuan $name
