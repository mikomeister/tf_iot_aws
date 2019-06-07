#Lambda function to extend the sunshade
#when the lux reading is too high
import socket
def lambda_handler(event, context):
    HOST = 'xxx.xxx.xxx.xxx'# The remote host
PORT = 4998             # The same port as used by the server
s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
s.connect((HOST, PORT))
s.sendall('sendir,1:1,15,37993,1,1,246,160,20,20,60,\r,\l')
data = s.recv(1024)
s.close()
print 'Received', repr(data)