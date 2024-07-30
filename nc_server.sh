#!/bin/sh

# Define the port on which the server will listen
PORT=12345

# Start the netcat server in listening mode
echo "Starting netcat server on port $PORT..."
nc -l -p $PORT
