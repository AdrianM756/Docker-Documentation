## Map Docker container to a volume

Why do we need to map our container to a volume? Having a volume mapped to our container allowed us to keep a backup to our data when our container suddenly stopped to restarted.
<br>

First, we need to create a volume name ```mydata```.

```
docker volume create mydata
```
<br>

Next, we will then mount the directory of our container to the ```mydata``` volume.

```
docker run -v mydata:/container/path my-image
```
<br>






