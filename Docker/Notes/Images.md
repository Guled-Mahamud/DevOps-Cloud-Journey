## What is a Docker Image? 🐳

A **Docker image** is a **lightweight, standalone template** that contains everything needed to run a containerized application, including:

✅ **Code** – The application itself

✅ **Libraries** – Required dependencies

✅ **Configuration** – Environment settings

✅ **System Tools** – Necessary commands and utilities

Think of a Docker image as a **blueprint** or **recipe** for creating a container.



## How Docker Images Work

1️⃣ **Pull an Image – Download an existing image from Docker Hub**

docker pull nginx


2️⃣ **Run a Container from an Image**

docker run -d -p 8080:80 nginx


3️⃣ **Build a Custom Image from a Dockerfile**

docker build -t myapp .


4️⃣ **Push an Image to Docker Hub (for sharing)**

docker push username/myapp


## Docker Image vs. Docker Container

Docker Image 🖼️  |	Docker Container 🚢

**Definition**	A blueprint of an application	 | A running instance of an image

**State**	Read-only, stored	| Active, can change

**Usage**	Used to create containers |	Runs applications



## Final Thoughts

Docker images make applications **portable, consistent, and easy to deploy.** They are the foundation of **containerized development and DevOps workflows.** 🚀