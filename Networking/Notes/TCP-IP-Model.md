# TCP/IP Model

The **TCP/IP model** is another framework for understanding how devices communicate over a network. It’s simpler than the OSI model and has **4 layers** instead of 7. Here’s a beginner-friendly breakdown of the TCP/IP model:

1. **Link Layer (or Network Interface Layer)**

- **What it does:** This layer handles the physical connection between devices on the same network. It’s responsible for the hardware, such as cables or Wi-Fi, and making sure data gets transmitted to the right device within the local network.

- **Example:** Think of it as the "postman" who delivers data to the right address in your local neighbourhood.

2. **Internet Layer**

- **What it does:** This layer is responsible for sending data across different networks. It uses IP addresses to determine the best path for the data to travel from one device to another, even if they are far apart, like across the world.

- **Example:** This layer is like a GPS system, guiding data packets to their correct destination on the internet.

3. **Transport Layer**

- **What it does:** This layer ensures that data is transferred reliably between devices. It controls the flow of data, checks for errors, and makes sure everything gets to the right place in the correct order. The two main protocols here are TCP (reliable communication) and UDP (faster but less reliable).

- **Example:** Imagine this layer is a delivery service, ensuring that packages (data) arrive safely and in the correct order.

4. **Application Layer**

- **What it does:** This is the top layer where software applications (like web browsers, email clients, or file-sharing programs) interact with the network. It defines how data is presented to users and handles the communication between apps and the network.

- **Example:** This layer is like the interface you see when you use a website, open an email, or run an app. It makes the network useful for you.


**In Summary:**

- **The TCP/IP model** is a simplified version of the OSI model with 4 layers.

- It helps data travel across networks, from the physical connection to what you see on your screen (like browsing the web or sending an email).

- The layers are:

1. **Link Layer** (Local connections like cables/Wi-Fi)

2. **Internet Layer** (Routing data across networks using IP addresses)

3. **Transport Layer** (Ensuring reliable data transfer with protocols like TCP/UDP)

4. **Application Layer** (The interface that lets you interact with networked apps)