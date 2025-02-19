# docker-compose.yml

- **`services` section:** Defines two services: `web` (Flask app) and `redis` (Redis database).
- **`web` service:**
    - Builds from the current directory using `Dockerfile`.
    - Exposes port `5003` to make the Flask app accessible.
    - Ensures Redis is started before running (`depends_on`).
    - Uses a custom Docker network for communication.
- **`redis` service:**
    - Uses the official Redis image (`redis:latest`).
    - Restarts automatically on failure (`restart: always`).
    - Exposes Redis on port `6379`.
    - Connects to the same custom network as the web app.
- **`networks` section:**
    - Defines a `bridge` network (`my-custom-network`) to allow internal communication between services while isolating them from external access.

```

# Specify the Docker Compose version
version: "3.8"  

# Define the services (containers) that will be created
services:  

# Flask application service
  web:  
    build: .  
    ports:
      - "5003:5003"  
    depends_on:
      - redis  
    networks:
      - my-custom-network  

 # Redis database service
  redis: 
    image: redis:latest  
    restart: always  
    ports:
      - "6379:6379"  
    networks:
      - my-custom-network  

networks:  # Define custom networks
  my-custom-network:
    driver: bridge  # Use a bridge network to enable communication between containers
```