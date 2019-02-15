# Description: Docker Container Command

### Note
* This command manages containers.

### Start a Docker Container with Nginx
1. Looks for the image locally in image cache, doesn't find anything.
2. Then looks in remote image repository (defaults to Docker Hub).
3. Downloads the latest version (nginx:latest by default).
4. Creates new container based on that image and prepares to start.
5. Gives it a virtual IP on a private network inside docker engine.
6. Opens up port 80 on host and forwards to port 80 in container.
7. Starts container by using the CMD in the image Dockerfile.
```
docker container run --publish 80:80 nginx
```

### Start a Docker Container with Nginx With Custom Options
* Use `8080:80` to use port 8080 on host OS which is mapped to port 80 in the container.
* Use `nginx:1.11` to change image version to nginx version 1.11.
* Use `nginx -T` to change the command to run on start.
* Use `--name` to assign a name to the container.
* Use `-d` to detach or run container in background and print container ID.
```
docker container run --publish 8080:80 --name webhost -d nginx:1.11 nginx -T
```

### List Docker Containers
```
docker container ls
docker container ls -a
```

### List Processes Running Inside a Docker Container
```
docker container top [container-name-or-id]
```

### Stop a Docker Container
```
docker container stop [container-name-or-id]
```

# Stop a Container before Removing it.
```
docker container rm [container-name-or-id-1, container-name-or-id-2, ...]

# Use -f switch to remove a running container or forcefully.
docker container rm -f [container-name-or-id-1, container-name-or-id-2, ...]
```

### TODO
* None
