#!/usr/bin/python
import asyncio
import websockets


async def connect():
    uri = "ws://localhost:8765"
    async with websockets.connect(uri) as websocket:
        await websocket.send("Hello Server!")  # Send message to server
        response = await websocket.recv()  # Receive response
        print(f"Received from server: {response}")

asyncio.run(connect())

