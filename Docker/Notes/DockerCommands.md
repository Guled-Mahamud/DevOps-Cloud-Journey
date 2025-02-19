# Docker Commands

1. **`docker login`**
    - This command logs you into Docker Hub (or another Docker registry). You need to enter your username and password. It's like signing into your account so you can pull or push Docker images.
2. **`docker build -t hello-flask .`**
    - This command builds a Docker image from a `Dockerfile` in the current directory (`.`). The `t` flag tags the image with a name (`hello-flask`). Think of it as packaging your application into a container.
3. **`docker run -d -p 5002:5002 hello-flask`**
    - This command runs a container from the `hello-flask` image. The `d` flag runs it in detached mode (in the background). The `p` flag maps port 5002 on your machine to port 5002 in the container. It's like starting your application in a virtual environment.
4. **`docker run -d --name mydb --network my-custom-network -e MYSQL_ROOT_PASSWORD=my-secret-pw mysql:5.7`**
    - This runs a MySQL database in a container. The `-name` flag gives the container a name (`mydb`). The `-network` flag connects it to a custom network (`my-custom-network`). The `e` flag sets an environment variable (in this case, the MySQL root password).
5. **`docker build -t hello-flask-mysql .`**
    - Similar to the earlier `docker build` command, but this time it builds an image tagged as `hello-flask-mysql`.
6. **`docker run -d --name myapp --network my-custom-network -p 5002:5002 hello-flask-mysql`**
    - This runs a container from the `hello-flask-mysql` image. It’s named `myapp`, connected to the `my-custom-network`, and maps port 5002.
7. **`docker network create my-custom-network`**
    - This creates a new Docker network called `my-custom-network`. Networks allow containers to communicate with each other.
8. **`docker logs`**
    - This shows the logs (output) of a running container. It’s useful for debugging or checking what’s happening inside the container.
9. **`docker ps`**
    - This lists all running containers. It’s like checking which applications are currently running.
10. **`docker ps -a`**
    - This lists all containers, including those that have stopped. It’s useful for seeing everything you’ve run.
11. **`docker info`**
    - This gives you detailed information about your Docker installation, like how many containers and images you have.
12. **`docker stop`**
    - This stops a running container. You need to specify the container ID or name.
13. **`docker rm`**
    - This removes a stopped container. It’s like deleting a virtual machine.
14. **`docker rm -f`**
    - This forcefully removes a container, even if it’s running. Use with caution!
15. **`no-cache-dir`**
    - This is not a Docker command but a Python `pip` option. It tells `pip` not to store downloaded packages in the cache. Useful in Docker to keep images smaller.
16. **`docker images`**
    - This lists all Docker images you have downloaded or created. It’s like checking your library of applications.
17. **`docker inspect 8f6b1ad2b15c`**
    - This gives detailed information about a container or image. Replace `8f6b1ad2b15c` with the actual ID of the container or image.
18. **`docker rmi`**
    - This removes a Docker image. Use it to clean up images you no longer need.
19. **`docker system prune`**
    - This cleans up unused Docker data, including stopped containers, unused networks, and dangling images. It’s like a spring clean for Docker.

### Additional Useful Commands

1. **`docker pull`**
    - This downloads a Docker image from a registry (like Docker Hub) but doesn’t run it. For example, `docker pull nginx` downloads the Nginx image.
2. **`docker exec -it <container_id> /bin/bash`**
    - This opens a terminal inside a running container. Replace `<container_id>` with the actual container ID. It’s like logging into a virtual machine.
3. **`docker-compose up`**
    - This is used with Docker Compose to start multiple containers defined in a `docker-compose.yml` file. It’s great for running multi-container applications.
4. **`docker-compose down`**
    - This stops and removes containers, networks, and volumes defined in a `docker-compose.yml` file.
5. **`docker volume create`**
    - This creates a Docker volume, which is used to persist data outside of containers. Useful for databases.
6. **`docker volume ls`**
    - This lists all Docker volumes.
7. **`docker network ls`**
    - This lists all Docker networks.
8. **`docker restart`**
    - This restarts a running container.
9. **`docker pause` and `docker unpause`**
    - These commands pause and unpause a running container, respectively.
10. **`docker stats`**
    - This shows real-time resource usage statistics (like CPU and memory) for running containers.
11. **`docker history`**
    - This shows the history of an image, including all the layers that make it up.