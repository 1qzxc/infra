#!/bin/bash
set -e

sudo apt-get install docker.io -y
sudo systemctl enable --now docker
