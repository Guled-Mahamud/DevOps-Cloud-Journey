# **Multistage Builds**

## **What are Multistage Builds?**

Multistage builds allow you to use **multiple stages** in a single Dockerfile. Each stage can have its own base image, dependencies, and commands. The key idea is:

- Use one stage to **build** your application.
- Use another stage to **run** your application.
- Copy only the necessary files from the build stage to the final stage.

This results in a smaller and more secure final image because it doesn’t include unnecessary files or dependencies.

---

## **Why Use Multistage Builds?**

### **The Problem**

- When building an application, you often need tools and dependencies (e.g., compilers, build tools) that are not needed to run the application.
- If you include these tools in your final Docker image, the image becomes **larger** and **less secure**.

### **The Solution**

- Multistage builds allow you to:
    - Use one stage to install build tools and compile your application.
    - Use another stage to copy only the compiled application and its runtime dependencies.
    - Discard the build tools and intermediate files, resulting in a smaller final image.

---

## **How Do Multistage Builds Work?**

A multistage Dockerfile has **multiple `FROM` statements**, each starting a new stage. You can name each stage using the `AS` keyword. At the end, you copy only the necessary files from one stage to another.

---

### **Example: Multistage Build for a Python App**

Here’s an example of a multistage Dockerfile for a Python application:



```
# Stage 1: Build the application
FROM python:3.9-slim AS builder

# Set the working directory
WORKDIR /app

# Copy the requirements file
COPY requirements.txt .

# Install dependencies
RUN pip install --user -r requirements.txt

# Copy the rest of the application code
COPY . .

# Stage 2: Run the application
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy only the installed dependencies from the builder stage
COPY --from=builder /root/.local /root/.local

# Copy the application code
COPY . .

# Ensure scripts in .local are usable
ENV PATH=/root/.local/bin:$PATH

# Run the application
CMD ["python", "app.py"]
```

---

### **What’s Happening Here?**

1. **Stage 1: Builder**
    - Uses the `python:3.9-slim` image to install dependencies and build the app.
    - Installs Python dependencies using `pip install --user`.
    - Copies the application code.
2. **Stage 2: Final**
    - Uses a fresh `python:3.9-slim` image to run the app.
    - Copies only the installed dependencies (`/root/.local`) from the builder stage.
    - Copies the application code.
    - Sets the `PATH` to include the locally installed dependencies.
    - Runs the app using `python app.py`.

---

## **Benefits of Multistage Builds**

1. **Smaller Images**
    - The final image only includes the application and its runtime dependencies, not the build tools or intermediate files.
2. **Improved Security**
    - By excluding build tools and unnecessary files, the final image has a smaller attack surface.
3. **Faster Builds**
    - Each stage can be cached independently, making builds faster.
4. **Cleaner Dockerfiles**
    - Multistage builds keep your Dockerfile organized and easy to understand.

---

## **When to Use Multistage Builds?**

Use multistage builds when:

- Your application requires build tools (e.g., compilers, package managers) that are not needed at runtime.
- You want to reduce the size of your final Docker image.
- You want to improve the security of your Docker image by excluding unnecessary files.

---

## **Example: Multistage Build for a Go App**

Here’s another example for a Go application:



```
# Stage 1: Build the Go application
FROM golang:1.19 AS builder

# Set the working directory
WORKDIR /app

# Copy the Go module files
COPY go.mod go.sum ./

# Download dependencies
RUN go mod download

# Copy the rest of the application code
COPY . .

# Build the application
RUN go build -o my-app .

# Stage 2: Run the application
FROM alpine:latest

# Set the working directory
WORKDIR /app

# Copy the compiled binary from the builder stage
COPY --from=builder /app/my-app .

# Run the application
CMD ["./my-app"]
```

---

### **What’s Happening Here?**

1. **Stage 1: Builder**
    - Uses the `golang:1.19` image to build the Go app.
    - Downloads dependencies using `go mod download`.
    - Builds the app using `go build`.
2. **Stage 2: Final**
    - Uses a lightweight `alpine` image to run the app.
    - Copies only the compiled binary (`my-app`) from the builder stage.
    - Runs the app using `./my-app`.

---

## **Summary of Multistage Builds**

| **Feature** | **Explanation** |
| --- | --- |
| **Smaller Images** | Final image only includes the application and runtime dependencies. |
| **Improved Security** | Excludes build tools and unnecessary files, reducing the attack surface. |
| **Faster Builds** | Each stage is cached independently, making builds faster. |
| **Cleaner Dockerfiles** | Keeps your Dockerfile organized and easy to understand. |

---

## **Key Takeaways**

- Multistage builds help you create **smaller, more efficient, and secure Docker images**.
- They are especially useful for applications that require build tools or have many dependencies.
- Use multiple `FROM` statements in your Dockerfile to define different stages.