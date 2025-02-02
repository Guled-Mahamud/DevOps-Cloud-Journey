# Subnetting

Think of a **network** like a big neighborhood and each device (like your computer, smartphone, etc.) is a house in that neighborhood. If you just have one big neighborhood with no organization, it can be really hard to manage and know where each device is located. So, subnetting is the process of dividing that big neighborhood into smaller, more manageable neighborhoods.

When we subnet a network, we take one large IP address range (like a big block of houses) and split it into smaller chunks, each of which can be assigned to different parts of a company, building, or even department. This helps with:

- Easier management of devices

- Improved network performance

- Better security, as devices can be isolated in different subnets.

## CIDR (Classless Inter-Domain Routing):

Now, **CIDR** is a way of writing IP addresses more flexibly and efficiently. Before CIDR, networks were divided into fixed classes (like Class A, B, and C). But CIDR lets you be more precise about how many addresses you need.

A typical IP address looks like this: 192.168.1.0. CIDR adds a "/number" at the end, like this: 192.168.1.0/24. The "/24" tells you how many addresses are in the subnet. Specifically, it says that the first 24 bits are for the network part, and the remaining bits are for the host part (which represents individual devices).

**Example:**

- If you have an address like **192.168.1.0/24**, that means the first 24 bits (out of the 32 bits in an IPv4 address) are used for the network, and the remaining 8 bits are for the devices within that subnet.

- That’s a **subnet** with 256 addresses (from 192.168.1.0 to 192.168.1.255), with the network and broadcast addresses reserved.


### Summary:

- **Subnetting** helps you divide a larger network into smaller, manageable subnets.

- **CIDR** is a way to represent IP addresses and subnet masks more efficiently using a “/number” format.