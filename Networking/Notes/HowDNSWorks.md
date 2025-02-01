# How DNS Works

1️⃣ Root DNS Servers      🌍 (Directs queries to TLD servers)

2️⃣ TLD (Top-Level Domain) Servers   📂 (.com, .org, .net, etc.)

3️⃣ Authoritative DNS Servers   🏢 (Stores actual domain records)

4️⃣ Recursive Resolver (ISP/Public DNS) 🔄 (Finds & caches answers)


## Example Recursive Query:

1. You type www.example.com in a browser.

2. Your **ISP’s recursive resolver** looks in its **cache.**

3. If the IP isn’t cached, it follows the DNS hierarchy:

- Asks the **root DNS** → gets directed to the .com TLD.

- Asks the **.com TLD** → gets directed to the example.com authoritative server.

- The authoritative server provides the IP → 192.168.1.1.

4. The browser **connects to** 192.168.1.1 and loads the website.



## Why is DNS Distributed?

DNS is **distributed** for **speed, reliability, and scalability**.

- **No Single Point of Failure** → If one server fails, others handle the request.

- **Global Load Balancing** → DNS is spread across multiple data centers worldwide.

- **Faster Resolution** → ISPs and public DNS servers cache responses to reduce load.


