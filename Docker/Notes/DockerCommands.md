# Docker Commands

1. **docker login**

- This command logs you into Docker Hub (or another Docker registry). You need to enter your username and password. It's like signing into your account so you can pull or push Docker images.

2. **docker build -t hello-flask .**

This command builds a Docker image from a 'Dockerfile' in the current directory ('.'). The -t flag tags the image with a name (hello-flask). Think of it as packaging your application into a container.

docker run -d -p 5002:5002 hello-flask

This command runs a container from the hello-flask image. The -d flag runs it in detached mode (in the background). The -p flag maps port 5002 on your machine to port 5002 in the container. It's like starting your application in a virtual environment.

docker run -d --name mydb --network my-custom-network -e MYSQL_ROOT_PASSWORD=my-secret-pw mysql:5.7

This runs a MySQL database in a container. The --name flag gives the container a name (mydb). The --network flag connects it to a custom network (my-custom-network). The -e flag sets an environment variable (in this case, the MySQL root password).

docker build -t hello-flask-mysql .

Similar to the earlier docker build command, but this time it builds an image tagged as hello-flask-mysql.

docker run -d --name myapp --network my-custom-network -p 5002:5002 hello-flask-mysql

This runs a container from the hello-flask-mysql image. It’s named myapp, connected to the my-custom-network, and maps port 5002.

docker network create my-custom-network

This creates a new Docker network called my-custom-network. Networks allow containers to communicate with each other.

docker logs

This shows the logs (output) of a running container. It’s useful for debugging or checking what’s happening inside the container.

docker ps

This lists all running containers. It’s like checking which applications are currently running.

docker ps -a

This lists all containers, including those that have stopped. It’s useful for seeing everything you’ve run.

docker info

This gives you detailed information about your Docker installation, like how many containers and images you have.

docker stop

This stops a running container. You need to specify the container ID or name.

docker rm

This removes a stopped container. It’s like deleting a virtual machine.

docker rm -f

This forcefully removes a container, even if it’s running. Use with caution!

-no-cache-dir

This is not a Docker command but a Python pip option. It tells pip not to store downloaded packages in the cache. Useful in Docker to keep images smaller.

docker images

This lists all Docker images you have downloaded or created. It’s like checking your library of applications.

docker inspect 8f6b1ad2b15c

This gives detailed information about a container or image. Replace 8f6b1ad2b15c with the actual ID of the container or image.

docker rmi

This removes a Docker image. Use it to clean up images you no longer need.

docker system prune

This cleans up unused Docker data, including stopped containers, unused networks, and dangling images. It’s like a spring clean for Docker.