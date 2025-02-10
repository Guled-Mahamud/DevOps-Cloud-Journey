# Docker Compose

## **What is Docker Compose?**

Docker Compose is like a **manager** for Docker containers. Instead of running multiple `docker run` commands to start each container, you can define all your services in a single file called `docker-compose.yml`. Then, with one command, Docker Compose will start all the containers for you.

---

## **Why Use Docker Compose?**

- **Simplifies Setup**: You don’t need to manually start each container or remember complex `docker run` commands.
- **Easy to Share**: You can share the `docker-compose.yml` file with others, and they can run your entire app with one command.
- **Networking Made Easy**: Docker Compose automatically sets up a network for your containers so they can communicate with each other.

---

## **The `docker-compose.yml` File**

The `docker-compose.yml` file is where you define all the services (containers) your app needs. It’s written in **YAML** (a simple, human-readable format). Here’s what a basic `docker-compose.yml` file looks like:

yaml

Copy

```
version: '3.8'  # Specifies the Docker Compose file format version

services:       # Defines the services (containers) for your app
  web:          # Service for the web app
    image: my-web-app:latest  # Docker image to use
    ports:
      - "5002:5002"  # Map port 5002 on your machine to port 5002 in the container
    depends_on:
      - db      # Ensures the web app starts only after the database is running

  db:           # Service for the database
    image: mysql:8  # Docker image to use
    environment:
      MYSQL_ROOT_PASSWORD: my-secret-pw  # Set the MySQL root password
```

---

### **Key Parts of the `docker-compose.yml` File**

1. **`version`**
    - Specifies the version of the Docker Compose file format. Different versions support different features.
2. **`services`**
    - This section defines all the services (containers) your app needs. Each service has its own configuration.
3. **`web` and `db`**
    - These are the names of the services. You can name them anything (e.g., `frontend`, `backend`, `database`).
4. **`image`**
    - Specifies the Docker image to use for the service (e.g., `my-web-app:latest` or `mysql:8`).
5. **`ports`**
    - Maps a port on your local machine to a port in the container. For example, `"5002:5002"` means you can access the app at `http://localhost:5002`.
6. **`depends_on`**
    - Ensures that one service starts only after another service is running. For example, the `web` service depends on the `db` service.
7. **`environment`**
    - Sets environment variables for the container. For example, the `MYSQL_ROOT_PASSWORD` is set for the MySQL database.

---

## **Docker Compose Commands**

Once you have a `docker-compose.yml` file, you can use Docker Compose commands to manage your app. Here are the most common commands:

1. **Start the App**
    
    bash
    
    Copy
    
    ```
    docker-compose up
    ```
    
    - This starts all the services defined in the `docker-compose.yml` file.
    - Add the `d` flag to run in the background (detached mode):
        
        bash
        
        Copy
        
        ```
        docker-compose up -d
        ```
        
2. **Stop the App**
    
    bash
    
    Copy
    
    ```
    docker-compose down
    ```
    
    - This stops and removes all the containers, networks, and volumes created by `docker-compose up`.
3. **View Logs**
    
    bash
    
    Copy
    
    ```
    docker-compose logs
    ```
    
    - This shows the logs (output) of all the services. Add the service name to see logs for a specific service:
        
        bash
        
        Copy
        
        ```
        docker-compose logs web
        ```
        
4. **List Running Containers**
    
    bash
    
    Copy
    
    ```
    docker-compose ps
    ```
    
    - This lists all the containers managed by Docker Compose.
5. **Rebuild Images**
    
    bash
    
    Copy
    
    ```
    docker-compose build
    ```
    
    - This rebuilds the Docker images for your services. Use this if you’ve made changes to your Dockerfile.
6. **Restart Services**
    
    bash
    
    Copy
    
    ```
    docker-compose restart
    ```
    
    - This restarts all the services. Add the service name to restart a specific service:
        
        bash
        
        Copy
        
        ```
        docker-compose restart web
        ```
        

---

## **Networking in Docker Compose**

Docker Compose automatically creates a **network** for your services. This means:

- All the services defined in the `docker-compose.yml` file can communicate with each other using their **service names**.
- For example, if you have a `web` service and a `db` service, the `web` service can connect to the `db` service using the hostname `db`.

### **Example**

In your Flask app, you can connect to the MySQL database using:

python

Copy

```
db = MySQLdb.connect(host="db", user="root", passwd="my-secret-pw", db="mysql")
```

Here, `host="db"` works because Docker Compose automatically sets up a network where the `db` service is accessible by its name.

---

## **Summary of Docker Compose**

- **`docker-compose.yml`**: A file that defines all the services (containers) your app needs.
- **Commands**: Use `docker-compose up` to start your app and `docker-compose down` to stop it.
- **Networking**: Docker Compose automatically sets up a network so your services can communicate with each other.

---

### **Why is Docker Compose Useful?**

- It makes it easy to manage multi-container applications.
- You can define everything in one file and share it with others.
- It handles networking and dependencies automatically.