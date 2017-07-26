#!/bin/bash

# This script creates user **stack** for OpenStack installation

# create accout stack and create /home/stack folder
sudo useradd -m stack

# set password
echo "Please enter password for user stack..."
sudo passwd stack

# add user to sudo group
sudo usermod -aG sudo stack
echo "stack ALL=(ALL) NOPASSWD: ALL" | sudo tee /etc/sudoers.d/stack

# for remote access
sudo chsh -s /bin/bash stack

