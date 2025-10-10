import zmq
import json


# Configure 0MQ
context = zmq.Context()

#  Socket to talk to server
print("Connecting to LabVIEW server…")
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5556")

def stop():
    json = '{"message":"stop"}'
    socket.send(json.encode())

    #  Get the reply.
    message = socket.recv()

    if message.decode("utf-8") == "ciao":
        print("LabVIEW application shuting down...")
    else:
        print("Error sending the message to the LabVIEW application...")

def say(text):
    data = {
        "message":"say",
        "payload":{"text": text}}
    data_json = json.dumps(data)
    socket.send(data_json.encode())

    #  Get the reply.
    message = socket.recv()

    if message.decode("utf-8") == f"say: {text}":
        print(message.decode("utf-8"))
    else:
        print("Error sending the message to the LabVIEW application...")
    
say("ciao")