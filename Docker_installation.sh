#!/bin/bash

set -e
## NOTE: Before installing Docker Engine, you must remove any conflicting packages—especially unofficial Docker-related ones provided by your Linux distribution. These can interfere with the official Docker installation, so it's essential to uninstall them first.
echo "🔧 Uninstalling conflicting Docker-related packages..."
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do
    sudo apt-get remove -y "$pkg" || echo "$pkg not installed."
done

## This will setup the docker on apt repository.
echo "📦 Updating apt and installing prerequisites..."
sudo apt-get update
sudo apt-get install -y ca-certificates curl

## This will ad Docker's official GPG key.
echo "🔐 Adding Docker's official GPG key..."
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

## This will add the repository to apt source.
echo "📁 Adding Docker repository to apt sources..."
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "🔄 Updating apt package index..."
sudo apt-get update

## This will install the latest version of docker.
echo "🚀 Installing Docker Engine and related components..."
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

echo "✅ Docker installation complete!"
echo "You can verify with: sudo docker version"
