# app2.py

- **Redis Connection**

    - Tries to connect to a Redis instance running on `host='redis'` (Docker service name).
    - If Redis is unreachable, it prints an error message instead of crashing the application.
- **Homepage (`/` Route)**
    - Increments a visit counter stored in Redis every time the page is visited.
    - Returns a message with the updated visit count.
- **Application Execution**
    - Runs the Flask app on `0.0.0.0:5003`, making it accessible externally (inside Docker or on a network).

```python
import os  

 # Import Redis library for interaction with Redis database
from redis import Redis, ConnectionError 

# Import Flask framework to create the web application
from flask import Flask  

# Initialize a Flask application
app = Flask(__name__)

# Attempt to connect to the Redis server
try:
    redis = Redis(host='redis', port=6379, decode_responses=True)  
    redis.ping()  
except ConnectionError:
    print("Could not connect to Redis server.")  
    
# Define the home route ("/") for the web app
@app.route("/")  
def home():
    """
    Function to handle requests to the homepage.
    It increments a visit counter stored in Redis and returns a welcome message.
    """
    count = redis.incr("visits")  
    return f"🚀 Welcome to My Flask App! 🌍\nNumber of visits: {count} " 


# Run the Flask application when the script is executed

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5003) 
# Start the Flask server, accessible on all network interfaces on port 5003
```