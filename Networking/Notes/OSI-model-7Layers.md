# OSI Model and 7 Layers

The **OSI Model (Open Systems Interconnection Model)** is a framework that standardizes how different devices communicate over a network. It breaks down the process of communication into seven distinct layers, making it easier to understand how data moves from one device to another. Each layer has a specific function and interacts with the layers above and below it.

Here are the **7 layers** of the OSI model, from bottom to top:


1. **Physical Layer (Layer 1)**

- **What it does:** This is the "hardware" layer. It’s responsible for the actual physical connection between devices (like cables, switches, or Wi-Fi).

- **Example:** It makes sure the data is transmitted as electrical signals or light pulses over cables or through the air.

2. **Data Link Layer (Layer 2)**

- **What it does:** This layer organizes data into frames and ensures reliable data transfer between devices on the same network (like your computer to a Wi-Fi router).

- **Example:** Think of it like the postman who makes sure a letter is properly addressed and sent to the right person within the same neighbourhood.

3. **Network Layer (Layer 3)**

- **What it does:** This layer determines how data should travel from one network to another. It uses IP addresses to route data across different networks.

- **Example:** It’s like a GPS system, figuring out the best path to send data from your computer to a website on the internet.

4. **Transport Layer (Layer 4)**

- **What it does:** This layer ensures that data is transferred reliably between devices, checks for errors, and makes sure everything gets to the right place. It uses protocols like TCP (for reliable communication) and UDP (for faster but less reliable communication).

- **Example:** Think of it like a delivery service that ensures a package is sent and arrives in the correct order.

5. **Session Layer (Layer 5)**

- **What it does:** This layer manages and keeps track of communication sessions between devices. It makes sure the conversation is ongoing and can be paused or resumed.

- **Example:** It’s like having a conversation with someone – the session layer ensures you can pause and resume without losing the context.

6. **Presentation Layer (Layer 6)**

- **What it does:** This layer translates, encrypts, and compresses data so that the receiving device can understand it. It ensures the data is in a readable format.

- **Example:** Think of it like a translator converting a message from one language into another or converting data into a format your app can read (like turning numbers into images).

7. **Application Layer (Layer 7)**

- **What it does:** This is the top layer where the application (e.g., a web browser, email program) directly interacts with the network. It provides services like web browsing, email, and file transfer.

- **Example:** It’s like the user interface you see – when you open a web browser, the application layer helps connect you to the website.


**In Summary:**

- The OSI model breaks down network communication into seven layers to help us understand how data moves from one device to another.

- Each layer has a specific job, from physically sending data to making sure it’s in a readable format for you to use.