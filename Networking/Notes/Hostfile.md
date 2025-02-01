# What is a Hosts File? 

The **hosts file** is a **local text file** on your computer that maps domain names (like example.com) to **IP addresses** (like 127.0.0.1). It works before your system queries a DNS server, allowing you to manually override domain resolutions.

## What Does It Do?

- **Redirect domains** to specific IPs (useful for testing websites).

- **Block websites** by mapping them to 127.0.0.1.

- **Speed up access** to frequently used domains by avoiding DNS lookups.


## Hosts File Location

### Windows:



C:\Windows\System32\drivers\etc\hosts


### Mac/Linux:

/etc/hosts


### Example Entries in a Hosts File


127.0.0.1   localhost      # Directs localhost to local machine

192.168.1.100 dev.local    # Maps dev.local to a local server

0.0.0.0   facebook.com     # Blocks Facebook
