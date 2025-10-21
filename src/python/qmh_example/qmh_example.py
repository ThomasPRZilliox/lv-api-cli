import zmq
import json
import time

# Configure 0MQ
context = zmq.Context()

#  Socket to talk to server
print("Connecting to LabVIEW server…")
socket = context.socket(zmq.REQ)
socket.connect("tcp://localhost:5555")


def stop():
    json = '{"message":"stop"}'
    socket.send(json.encode())

    #  Get the reply.
    message = socket.recv()

    if message.decode("utf-8") == "ciao":
        print("LabVIEW application shuting down...")
    else:
        print("Error sending the message to the LabVIEW application...")


def set_temperature(temperature_setpoint):
    data = {
        "message": "update_temperature",
        "payload": {"temperature_setpoint": temperature_setpoint}}
    data_json = json.dumps(data)
    socket.send(data_json.encode())

    #  Get the reply.
    message = socket.recv()

    if message.decode("utf-8") == f"Temperature set to: {temperature_setpoint}":
        print(message.decode("utf-8"))
    else:
        print("Error sending the message to the LabVIEW application...")


set_temperature(20)
time.sleep(5)
set_temperature(25)
time.sleep(5)
set_temperature(20)
time.sleep(5)
stop()