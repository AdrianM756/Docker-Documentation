## Docker Compose
<br>

[Docker Compose](https://docs.docker.com/compose/) Is a tool used for defining and managing multi-container Docker applications, automating the process of building, running, and linking multiple services like web servers, databases, and caching services. With Docker Compose, you use a YAML configuration file, known as the [Compose file](https://docs.docker.com/compose/intro/compose-application-model/#the-compose-file), to configure your application’s services, and then you create and start all the services from your configuration with the Compose CLI.
<br>

Determine if the Docker compose is installed on the system. We can verify it using the command:

```
docker-compose --version
```

## Creating a Docker Compose Folder

Everytime we are working on docker compose, We need to create folder that is dedicated to the compose that we will be using. to do that, we will use the command:
```
mkdir <name of the docker compose folder>
```
<br>

Let us then  navigate inside this folder using the command ```cd```.

We will then create and edit the contents of our docker compose with a ```yaml``` file extension.
```
nano docker-compose.yaml
```
<br>

***NOTE:*** By default, docker compose look for the filename ```docker-compose.yaml```. But can still use a different filename name for your docker compose using this ```-f``` parameter:
```
nano -f <name of the docker compose file>.yaml
```
<br>

We will then input the following commands for creating and running an ```nginx```:
```
version: '28.1.1'

services:
  nginx:
    image: nginx:latest
    container_name: my_nginx
    ports:
      - "80:80"
    restart: always
```
<br>

***Explaination***:

* ```version``` refers to the version of your docker machine.

* ```services``` refers to the service that we will be using which is ```nginx```.

* ```nginx:latest``` will pull the latest Nginx image.

* ```container_name: my_nginx``` refers to the name of the nginx container.

* ```- "80:80"``` Maps port 80 on your machine to the container.

* ```restarr:always``` Ensures the container restarts automatically.
<br>

## Running the Docker Compose

To run the docker compose that we've created, we will use the command:
```
docker-compose up -d
```
<br>

To check if our docker container is running, we can use the command:
```
docker ps
```
<br>

Or, if we only want to see containers that are within the docker-compose environment, we can use an alternative command:
```
docker-compose ps
```
<br>

***Summary:*** Think of docker compose as using the ```docker run``` but inside a file and using a ```yaml``` format. It can also makes it easier to run multiple containers in a span of a few seconds.
