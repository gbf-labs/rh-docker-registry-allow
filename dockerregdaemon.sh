#!/bin/bash

sudo echo "10.10.100.5 vgit.rhbox.io" >> /etc/hosts
sudo echo "10.8.2.5 git.rhbox.io" >> /etc/hosts
sudo touch /etc/docker/daemon.json
sudo echo '{"insecure-registries": ["git.rhbox.io:5000", "vgit.rhbox.io:5000", "10.10.100.5:5000", "10.8.2.5:5000"]}' >> /etc/docker/daemon.json
sudo /etc/init.d/docker restart 
