#!/usr/bin/env python3

import socket
from  asterisk.agi import *
agi = AGI()
# Create a socket
sock = socket.socket()
# Bind to default AGI port 4573
sock.bind(("localhost", 4573))
# Listen for connections
sock.listen(1)

while True:
    # Accept connections on the socket
    connection, remoteSock = sock.accept()
    print('Opened connection with', remoteSock)
    while True:
        # Read in one line from the connection
        line = connection.recv(1024).strip().decode()
        print(line)
        # Stop looping when Asterisk sends an empty line
        if not line:
            break

    connection.send(b'verbose "fastAGI is fun!" 0 \n')
    response = connection.recv(1024).strip().decode()
    print(response)
    agi.verbose("hello fast agi")
    connection.close()

