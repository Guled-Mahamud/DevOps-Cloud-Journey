# What Are nslookup and dig? 

Both **nslookup** and **dig** are command-line tools used for querying DNS (Domain Name System) to find information about domain names, IP addresses, and DNS records.

## 🔹 1. nslookup (Name Server Lookup)

✅ Basic & User-Friendly

✅ Available on Windows, Mac, and Linux

✅ Used for quick DNS lookups

### Example Usage:

Find the IP address of example.com:


**nslookup example.com**


Query a specific DNS server:


**nslookup example.com 8.8.8.8  (Uses Google's DNS)**


Find Mail Server (MX record):


**nslookup -type=MX example.com**



## 2. dig (Domain Information Groper)

✅ More Detailed & Advanced

✅ Available on Mac & Linux (Windows via WSL)

✅ Used by network admins & developers for in-depth DNS analysis

### Example Usage:
Basic lookup:

**dig example.com**


Query only A records:


**dig example.com A**


Get all DNS records:


**dig example.com ANY**


Use a specific DNS server:


**dig @8.8.8.8 example.com**