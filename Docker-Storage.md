## Docker Storage

[Storage](https://docs.docker.com/engine/storage/) By default all files created inside a container are stored on a writable container layer that sits on top of the read-only, immutable image layers. By default all files created inside a container are stored on a writable container layer that sits on top of the read-only, immutable image layers. The writable layer is unique per container. You can't easily extract the data from the writeable layer to the host, or to another container.
<br>

By default, ```/var/lib/docker```  is the location were docker files related to a container or image is stored.
<br>

***Question:*** When we create and run a docker container will it automatically save the data stored inside when the docker container stop?
<br>

***Answer:*** Unfortunately, no. in order to save the existing files and contents inside a docker container, you must map a volume to the container so that the data stored by the container is stored at ```/opt/data``` on the host. For example, if we create and run a mysql container:

```
docker run -v /opt/data:/var/lib/mysql -d --name mysql-db -e MYSQL_ROOT_PASSWORD=db_pass123 mysql
```
<br>

```-v``` refers to binding a volume. In this case, we will bind the content of ```/var/lib/mysql``` to ```/opt/data```.

```-e``` refers to the enviroment variable that we want to set. In this case, we want to set the mysql root password using the command ```MYSQL_ROOT_PASSWORD=<password you want to set>```.






