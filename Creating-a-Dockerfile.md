## Dockerfile
<br>

[Dockerfile](https://docs.docker.com/reference/dockerfile/) is a text document that contains all the commands a user could call on the command line to assemble an image. Basically, it's an automation of docker image creation.

First, we will create a file called ```Dockerfile```. 

***NOTE:*** Please bare in mind that it is not required to name the file as ```Dockerfile```. You can still use a different file name but we will be needing the ```-f <name-of-the-Dockerfile>```. 
<br>
<br>

Once we created it we will then use copy and paste the following on the ```Dockerfile```:

```
FROM python:3.6-alpine

MAINTAINER <Author's detail>

RUN pip install flask

COPY . /opt/

EXPOSE 8080

WORKDIR /opt

ENTRYPOINT ["python", "app.py"]

```
<br>

```FROM``` Refers to the base image that will be used on the container. If the image is not available to the system, it will automatically pull it from [Docker Hub](https://hub.docker.com/).
<br>

```MAINTAINER``` Allows the authors to set the details in an image. It can also include personal detais of the author such as name, email address, etc. and it is strongly recommended to place it after the ```FROM``` instruction.
<br>

```RUN``` Refers to the the commmand that we want to run on the image. 
<br>

```COPY``` Copies files or directories from <src> and adds them to the filesystem of the container at the path <dest>. 
<br>

```EXPOSE``` Refers to the port where the container is running.
<br>

```WORKDIR``` Refers to the working directory that you want to prompt to when you access the container.
<br>

```ENTRYPOINT``` Is used to set executables that will always run when the container is initiated.
<br>
<br>

## Building a Docker image
<br>

We will then build an image from this ```Dockerfile``` by using the command:

```
docker build -t <name-of-the-image> .
```
<br>

```-t``` Refers to the tag/name if the image that we want to create.
<br>

***NOTE:*** At the end of the command, we used the ```"."``` (dot) symbol which indicates for the current directory, so you need to run this command from within the directory that has the ```Dockerfile```.

Use the ```docker images``` to verify the the image was successfully created.














