# Dockerfile

- **Stage 1 (Build Stage)**:
    - Installs required system dependencies to compile Python packages.
    - Installs application dependencies (`flask` & `redis`).
    - Helps avoid unnecessary dependencies in the final image.
- **Stage 2 (Production Stage)**:
    - Uses a clean `python:3.8-slim` image (without build tools) to keep the final image lightweight.
    - Copies only necessary files from the build stage.
    - Runs the Flask application on port `5003`.

```docker

# Stage 1: Build Stage

# Use a lightweight Python 3.8 image as the base for building dependencies

FROM python:3.8-slim as Build

# Set the working directory inside the container

WORKDIR /app2

# Install required system dependencies for building Python packages

RUN apt-get update && apt-get install -y \
    gcc \                  
    python3-dev \           
    libpq-dev \             
    build-essential \       
    pkg-config \            
    && rm -rf /var/lib/apt/lists/*  # Cleanup to reduce image size

# Copy all application files into the container

COPY . .

# Install Python dependencies without caching to keep the image smaller

RUN pip install --no-cache-dir flask redis



# Stage 2: Production Stage

# Use a fresh lightweight Python 3.8 image for running the app
FROM python:3.8-slim

# Set the working directory inside the container
WORKDIR /app2

# Copy everything from the build stage to the final container
COPY --from=Build /app2 /app2/

# Expose port 5003 for the Flask application
EXPOSE 5003

# Define the command to run the application
CMD ["python", "app2.py"]
```