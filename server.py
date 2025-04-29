#!/usr/bin/python
import asyncio
import websockets

async def handle_connection(websocket, path):
   
    try:
        message = await websocket.recv()
        print(f"Received from client : {message}")
        response = "Message received successfully"
        await websocket.send(response)
    except websockets.exceptions.ConnectionClosedError as e:
        print(f"Connection closed with error: {e}")


'''start_server = websockets.serve(handle_connection, "0.0.0.0", 8765)

asyncio.get_event_loop().run_until_complete(start_server)
asyncio.get_event_loop().run_forever()

'''
async def main():
    server = await websockets.serve(handle_connection, "0.0.0.0", 8765)
    print("WebSocket Server Started on ws://0.0.0.0:8765")
    await server.wait_closed()


if __name__ == "__main__":
    asyncio.run(main())  # Ensure asyncio ru
