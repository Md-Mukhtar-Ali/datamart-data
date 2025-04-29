#!/usr/bin/python3

import sys
import asyncio
import websockets
from asterisk.agi import AGI

agi = AGI()

async def connect():
    uri = "ws://localhost:8765"
    async with websockets.connect(uri) as websocket:
        await websocket.send("Call received")
        response = await websocket.recv()
        return response

async def main():
    response = await connect()
    agi.verbose(f"Received from WebSocket: {response}")
    agi.exec("Playback", "tt-monkeys")  # Play audio in Asterisk

asyncio.run(main())  # Run the async function

