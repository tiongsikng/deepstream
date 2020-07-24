#!/bin/bash

sudo apt-get install libssl1.0.0 -y
sudo apt-get install libgstreamer1.0-0 -y
sudo apt-get install gstreamer1.0-tools -y
sudo apt-get install gstreamer1.0-plugins-good -y
sudo apt-get install gstreamer1.0-plugins-bad -y
sudo apt-get install gstreamer1.0-plugins-ugly -y
sudo apt-get install gstreamer1.0-libav -y
sudo apt-get install libgstrtspserver-1.0-0 -y
sudo apt-get install libjansson4 -y
sudo tar -xvf binaries.tbz2 -C