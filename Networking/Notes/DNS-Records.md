# DNS Records


🔹 **A Record → Maps a domain to an IPv4 address.**

 - example.com → 192.168.1.1

🔹 **AAAA Record → Same as A record but for IPv6.**

- example.com → 2001:db8::1

🔹 **CNAME Record → Creates an alias (nickname).**

- www.example.com → example.com

🔹 **MX Record → Directs email to the correct server.**

- example.com → mail.example.com (priority 10)

🔹 **TXT Record → Stores text for verification/security.**

- SPF, DKIM, Google site verification

🔹 **NS Record → Defines the domain’s nameservers.**

- example.com → ns1.exampledns.com

🔹 **SOA Record → Contains domain admin & update rules.**

- Primary nameserver, admin email, refresh settings

🔹 **PTR Record → Reverse lookup (IP to domain).**

- 192.168.1.1 → example.com

🔹 **SRV Record → Defines services like VoIP, Teams.**

- _sip._tcp.example.com → sipserver.example.com