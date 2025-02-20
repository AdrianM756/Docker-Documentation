## Docker Registry

[registry](https://docs.docker.com/get-started/docker-concepts/the-basics/what-is-a-registry/) is a centralized location for storing and sharing your container images. It can be either public or private. By default, the docker engine interacts with [Docker Hub](https://hub.docker.com/) which is a public registry that anyone can use and is the default registry.
<br>

## Docker Login

[docker login](https://docs.docker.com/reference/cli/docker/login/) is use to authenticate to a registry. You can authenticate to a registry using a username and access token or password. To do this, we can use the command:

```
docker login <REGISTRY SERVER>
```
<br>


## Setting up a Registry Server

On this demo, we will be deploying a registry server on a container running on our system. Here is the command that we will be using:

```
docker run -d -p 6500:5000 --restart=always --name my-registry registry:2
```

***Explaination:***
 <br>
 ```-d``` refers to running your container in detached mode in the background.
<br>
 
 ```-p 6500:5000``` The ```-p``` refers to the port that we we will be using. ```6500``` refers to the host port while ```5000``` refers to the exposed port on the image.
<br>

```--restart=always``` means that if the container shutdowns, it will automatically restart.
<br>

```--name my-registry``` refers to the the name of the registry that we will create.
<br>

``` registry:2``` refers to the the version of the registry that we will be using. In this case, we will use version 2.
<br>












 
