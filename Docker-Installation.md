![image](https://blog.dreamfactory.com/hubfs/Imported_Blog_Media/large_h-dark.png)

## Docker Installation

On this demo, we will be installing docker on a Ubuntu machine.

## Uninstalling Old Version

Before you can install Docker Engine, you need to uninstall any conflicting packages.

Your Linux distribution may provide unofficial Docker packages, which may conflict with the official packages provided by Docker. You must uninstall these packages before you install the official version of Docker Engine.
<br>

* ```docker.io```
* ```docker-compose```
* ```docker-compose-v2```
* ```docker-doc```
* ```podman-docker```
<br>

Moreover, Docker Engine depends on containerd and runc. Docker Engine bundles these dependencies as one bundle: containerd.io. If you have installed the containerd or runc previously, uninstall them to avoid conflicts with the versions bundled with Docker Engine.
<br>
Run the following command to uninstall all conflicting packages:
<br>

```
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
```
<br>

apt-get might report that you have none of these packages installed.

Images, containers, volumes, and networks stored in ```/var/lib/docker/``` aren't automatically removed when you uninstall Docker.
<br>

## Install using the apt repository

To setup docker on apt repository, use the command:
```
# Add Docker's official GPG key:
sudo apt-get update
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update
```
<br>

To install the latest version, use the command:
```
sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```
<br>

To verify that docker is successfully installed, we can use the command:
```
docker --help
```
<br>


