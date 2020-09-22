#!/bin/bash

# Author:   Ray Ding
# Date:     2020/09/22 21:24
# Version:  1.0
# Description:
# Each disk is divided into 2 zones
# The first area is the LVM area
# The second district is Raid district
# Mount after completion, and be able to automatically mount at boot

# disk partition
for disk in /dev/sda /dev/sdb /dev/sdc /dev/sdd
do fdisk $disk << EOF
n
p
1

+2G
n
p
2


w
EOF
done

# LVM
mkdir -p /data/lv100
pvcreate /dev/sd{a,b,c,d}1
vgcreate lvm100 /dev/sd{a,b,c,d}1
lvcreate -n volumn_1 -L 2G lvm100
mkfs.xfs /dev/lvm100/volumn_1
mount -o defaults /dev/lvm100/volumn_1 /data/lv100
echo "/dev/lvm100/volumn_1  /data/lv100 xfs  defaults 0 0" >> /etc/fstab

# Raid5 creation and mount
mkdir -p /data/raid5
mdadm -Cv /dev/md0 -a yes -n 4 -l 5  /dev/sd{a,b,c,d}2
mkfs.xfs /dev/md0
mount /dev/md0 /data/raid5
echo "/dev/md0 /data/raid5 xfs defaults 0 0" >> /etc/fstab
