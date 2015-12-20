#!/bin/bash

name=$1
ip=$2
netid="a685fc00-3a3e-4330-80d5-481b443c1c6e"
flavor=m1.medium

if [[ $name == *"slave"* ]]
then
    flavor=m1.xlarge
fi

if [[ $name == *"master"* ]]
then
    flavor=m1.large
fi

nova boot --image ubuntu_1404 --flavor $flavor --nic net-id=$netid,v4-fixed-ip=$ip --key-name osxueyuan $name
