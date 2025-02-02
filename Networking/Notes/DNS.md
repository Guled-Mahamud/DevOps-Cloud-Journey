# DNS (Domain Name System)

**DNS (Domain Name System)** is like the **phonebook of the internet**. It translates human-friendly website names (like google.com) into computer-friendly **IP addresses** (like 142.250.190.46), so your browser can load websites.


## Types of DNS Servers

1. **Recursive DNS Resolver** – Finds the IP address for you.

2. **Root DNS Server** – Directs the request to the right category (.com, .org, etc.).

3. **TLD (Top-Level Domain) Server** – Knows where to find domains like .com or .net.

4. **Authoritative DNS Server** – The final source that holds the IP address of the website.


## What Are Nameservers?

A **nameserver** is a special type of server that stores and manages domain name information. It tells web browsers where to find a website when someone types in a domain name (e.g., example.com).

### How Nameservers Work (Step-by-Step)

1. You type www.example.com in your browser.

2. Your browser asks the **DNS system** for the website’s IP address.

3. The request is sent to the **nameservers** for example.com.

4. The nameserver replies with the correct IP address (e.g., 192.168.1.1).

5. Your browser connects to that IP and loads the website.



## What Are Zone Files?

A **zone** file is a text file that contains all the DNS records for a domain. It acts like an address book, telling the nameserver how to handle different requests (like websites, emails, and subdomains).

**What’s Inside a Zone File?**

A **zone file** contains different **DNS records**, such as:

- **A Record** → Maps a domain (example.com) to an IP address (192.168.1.1).

- **CNAME Record** → Creates an alias (www.example.com → example.com).

- **MX Record** → Directs emails to the correct mail server.

- **NS Record** → Lists the nameservers for the domain.

- **TXT Record** → Stores extra information, like security settings.


### How Nameservers and Zone Files Work Together

- **Nameservers** store and manage **zone files**.

- When a browser asks for a website’s IP, the nameserver checks its **zone file** and provides the correct IP.