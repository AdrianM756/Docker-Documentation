## Docker Commands
<br>

| Command | Description |
|--------|-------------|
| `docker --version` | Check the Docker version running on the system. |
| `docker ps` | Show running Docker containers. |
| `docker ps -a` | List all Docker containers (running and stopped). |
| `docker images` | List all installed Docker images. |
| `docker run <image>` | Create a container from an image. If the image isn't available locally, it pulls from the [Docker Hub](https://hub.docker.com/). |
| `docker stop <container-id | container-name>` | Stop a running container. |
| `docker rm <container-id | container-name>` | Delete a container. |
| `docker rmi <image>` | Delete a Docker image. |
| `docker pull <image>` | Pull an image from the [Docker Hub](https://hub.docker.com/). |
| `docker run -d --name <container-name> <image>` | Run a container in detached mode with a custom name. |
| `-d` | Detached mode: runs the container in the background. |
| `--name` | Assigns a name to the container. |
| `docker inspect <container-id>` | Provides detailed configuration info about Docker objects in JSON format. |





