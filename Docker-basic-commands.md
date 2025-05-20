## Docker Commands
<br>

```docker --version``` To check the Docker version that is running on the system.
<br>

```docker ps``` To check how many docker containers are running on the system.
<br>

```docker ps -a``` List  all the docker containers whether it is running or not.
<br>

```docker images``` List all docker images that are installed.
<br>

```docker run <images>``` Use to create a container. If the image is not available on the system, it will automatically pull the image from the [Docker hub](https://hub.docker.com/).
<br>

```docker stop <container-id | container-name>``` Use to stop a running container.
<br>

```docker rm <container-id | container-name>``` Use to delete a container.
<br>

```docker rmi <image>``` Use to delete a docker image.
<br>

```docker pull <image>``` use to pull an image on the [Docker hub](https://hub.docker.com/).
<br>

```docker run -d --name <container-name> <image>```
<br>

```-d``` means detached
<br>

```--name``` refers to the name of the container
<br>

```docker inspect <container-id>``` Will provide us low-level configuration information about various Docker objects like images, containers, volumes, networks, nodes, etc. in a JSON format.
<br>




