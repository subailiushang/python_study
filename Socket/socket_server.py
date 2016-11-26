#!/usr/bin/env python

import socket

HOST = ""
PORT = 3124

s=socket.socket()
s.bind((HOST,PORT))
s.listen(5)

clnt,addr = s.accept()

print "Client Address:",addr

while True:
	data = clnt.recv(1024)
	if not data:
		break
	print "Recieve Data:",data.decode('utf-8')
	clnt.send(data)
clnt.close()
s.close()

