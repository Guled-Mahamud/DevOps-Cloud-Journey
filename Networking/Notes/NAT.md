# What is Network Address Translation (NAT)

Network Address Translation (NAT) is a way for multiple devices on a local network (like your home Wi-Fi) to share one public IP address when connecting to the internet.

## Why is NAT needed?

- **Limited IP Addresses** – The internet has a limited number of public IP addresses, so not every device can have a unique one.

**Security** – NAT hides private IP addresses from the internet, making it harder for hackers to directly attack devices.

## How does NAT work?

- Your home router has a **public IP address** (given by your internet provider).

- Devices in your home (like phones, laptops, and smart TVs) have **private IP addresses** (only used inside your network).

- When a device wants to visit a website, the router changes its private IP to the public IP before sending the request.

- When the website replies, the router sends the response to the correct device inside your home network.

## Types of NAT:

- **Static NAT** – One private IP is always mapped to the same public IP.

- **Dynamic NAT** – Private IPs are mapped to different public IPs from a pool.

- **PAT (Port Address Translation)** – Many devices share one public IP using different port numbers. (Most common in home networks)

## Example of NAT in action:

- Your phone (private IP: **192.168.1.10**) wants to open Google.

- Your router (public IP: **45.67.89.100**) changes the request to come from its own public IP.

- Google sends the reply to **45.67.89.100**, and the router forwards it back to your phone.