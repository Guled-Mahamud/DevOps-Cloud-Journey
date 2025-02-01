# Static vs. Dynamic Routing 

Routing is how data moves from one network to another. There are two main types:

📌 **Static Routing** (Manually Configured)

📌 **Dynamic Routing** (Automatically Adjusted)



 ###  What is Static Routing?

🔹 **Manually configured** by a network administrator.

🔹 Uses a **fixed path** for sending data.

🔹 Does **not change** unless manually updated.

🔹 Best for **small, simple networks.**


#### Example of Static Routing

**A router is told:**

“Send all data for 192.168.2.0/24 to the next router at 192.168.1.1.”


✅ Advantages:

✔ Simple, secure, and predictable.

✔ Uses less router processing power.

❌ Disadvantages:

✖ Doesn't update automatically.

✖ If a network changes or fails, manual updates are needed.



 ### What is Dynamic Routing?

🔹 Uses **protocols** to automatically learn and update routes.

🔹 Adapts when **network conditions change.**

🔹 Used in **large, complex networks** (e.g., the internet).


#### Example of Dynamic Routing Protocols:

✅ **RIP (Routing Information Protocol)** – Basic, used in small networks.

✅ **OSPF (Open Shortest Path First)** – Finds the best path based on speed/cost.

✅ **BGP (Border Gateway Protocol)** – Used on the **internet** for global routing.




✅ Advantages:

✔ Adapts to network changes automatically.

✔ More efficient in large networks.

❌ Disadvantages:

✖ Requires more processing power.

✖ Can be complex to configure.



#### Which One Should You Use?

**Small networks (home, small office)** → ✅ Static Routing

**Large networks (corporate, internet providers)** → ✅ Dynamic Routing

