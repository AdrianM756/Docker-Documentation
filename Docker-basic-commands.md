## Docker Commands
<br>

| Command | Description |
|--------|-------------|
| `docker --version` | Check the Docker version running on the system. |
| `docker ps` | Show running Docker containers. |
| `docker ps -a` | List all Docker containers (both running and stopped containers.) |
| `docker images` | List all installed Docker images. |
| `docker run <image>` | Create a container from an image. If the image isn't available locally, it pulls from the [Docker Hub](https://hub.docker.com/). |
| `docker stop <container-id>  <container-name>` | Stop a running container. |
| `docker rm <container-id> <container-name>` | Delete a container. |
| `docker rmi <image>` | Delete a Docker image. |
| `docker pull <image>` | Pull an image from the [Docker Hub](https://hub.docker.com/). |
| `docker run -d --name <container-name> <image>` | Run a container in detached mode with a custom name. |
| `-d` | Detached mode: runs the container in the background. |
| `--name` | Assigns a name to the container. |
| `docker inspect <container-id>` | Provides detailed configuration info about Docker objects in JSON format. |
| `docker exec -it <container-id> <command you want to run inside the container. (ex. bash, sh)> ` | ```exec``` tells Docker to execute a command inside a running container. ```-i``` Stands for interactive — keeps the input stream open and  ```-t``` Allocates a pseudo-TTY — gives you a terminal-like interface. |
| ```-p 80:8082``` | ```-p``` refers to the port. ```80``` is the port on your host machine (your computer or server). ```8082``` Port inside the Docker container where the app is running. So, ```-p 80:8082``` means: "Expose port ```8082``` from the container to port ```80``` on the host." More ex., Let’s say you have a ```Node.js``` app inside the container that listens on port ```8082```. By mapping it to port ```80```, users can access it via:```http://localhost``` instead of ```http://localhost:8082```. |






