## Docker Network

[Container networking](https://docs.docker.com/engine/network/) refers to the ability for containers to connect to and communicate with each other, or to non-Docker workloads.  Additionally, ontainers have networking enabled by default, and they can make outgoing connections. Second, It has no information about what kind of network it's attached to, or whether their peers are also Docker workloads or not. Third, a container only sees a network interface with an IP address, a gateway, a routing table, DNS services, and other networking details. That is, unless the container uses the none network driver.
<br>

To check the number  of container network on the system, we can use the command:

```
docker network ls
```
<br>

By default, the docker network is set to  ```172.17.0.0/16```
<br>

To check the info of a network, we can use the command:

```
docker network inspect <NAME OF THE NETWORK>
```
<br>

## Attach a network to a container

On this demo, we will create a container named **alpine-2** using the image ```alpine``` and attach it to a network using the command:

```
docker run --name alpine-2 --network=<NAME OF THE NETWORK> alpine
```
<br>

## Creating a Network 

To create a docker network, we can use the command:

```
docker network create --driver bridge --subnet 192.168.4.0/24 --gateway 192.168.4.1 <NAME OF THE NETWORK>
```
<br>

***Questions:***
<br>

* What is a driver?
* What if I don't specify a ```--driver``` parameter when creating  network? will it still work?
* Beside from ```bridge```, what options can I use?
* Using the ```docker network ls``` I see that there is already an existing bridge network. How was is created on the first place? can I delete that bridge?

<br>

***Explaination:***
<br>

* Driver or [Network Driver](https://docs.docker.com/engine/network/drivers/) are pluggable interfaces that provides actual network immplementations for docker containers.
  <br>
* By default, If you don't specify the ```--driver``` option, the command automatically creates a bridge network for you.
<br>
* The followings the the available drivers by default:
<br>
<br>

| Drivers |  Description                       |
| :-------- | :-------------------------------- |
| `bridge`      | The default network driver. |
| `host`      | 	Remove network isolation between the container and the Docker host. |
| `none`      | Completely isolate a container from the host and other containers. |
| `overlay`      | 	Overlay networks connect multiple Docker daemons together. |
| `ipvlan`      | IPvlan networks provide full control over both IPv4 and IPv6 addressing. |
| `macvlan`      | 	Assign a MAC address to a container. |
<br>

* When you install Docker Engine it creates a bridge network automatically. This network corresponds to the ```docker0``` bridge that Docker Engine has traditionally relied on. When you launch a new container with ```docker run```, it automatically connects to this bridge network. You **cannot** remove this default bridge network, but you can create new ones using the network create command.



