#!/bin/sh

# Define the server's IP address and port
SERVER_IP="192.168.1.100"
PORT=12345

# Send the message to the netcat server
echo "Sending message to $SERVER_IP:$PORT..."
echo "Hello --- from client" | nc $SERVER_IP $PORT
