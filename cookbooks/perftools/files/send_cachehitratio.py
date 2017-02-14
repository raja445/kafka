#!/usr/bin/python
#Script to send cache hit ratio to graphite
import sys
import time
import socket
import subprocess

if len(sys.argv) != 2:
  print "only one argument accepted: 'command run interval'"
  sys.exit(1)

facterdetails=subprocess.check_output(["/usr/bin/facter", "colo", "hostname"])
colo=facterdetails.split("\n")[0].split('=>')[1].strip()
hostname=facterdetails.split("\n")[1].split('=>')[1].strip()
graphite_hosts={
     'uh1':'metrics-relay.grid.uh1.inmobi.com',
     'dfw1':'metrics-relay.grid.dfw1.inmobi.com',
     'lhr1':'metrics-relay.grid.lhr1.inmobi.com',
     'pek1':'metrics-relay.grid.pek1.inmobi.com',
     'hkg1':'metrics-relay.grid.hkg1.inmobi.com'}

graphite_port=2020

prefix_dict={
     'uh1':'prod.uh1.grid.UH1_Krypton.sys',
     'dfw1':'prod.dfw1.grid.DFW1_Onyx.sys',
     'lhr1':'prod.lhr1.grid.LHR1_Emerald.sys',
     'pek1':'prod.pek1.grid.pek1-pyrite.sys',
     'hkg1':'prod.hkg1.grid.HKG1_Opal.sys'}

prefix=prefix_dict[colo.strip()]
metricspath="cachestat.hitratio"
graphite=graphite_hosts[colo.strip()]

output=subprocess.check_output(["/usr/bin/cachestat", "1", sys.argv[1]])
cachestat=output.split("\n")
val=[]
for i in range(1, len(cachestat)):
   if (len(cachestat[i]) != 0):
     val.append(cachestat[i].split()[3].split('.')[0])

metric=prefix+'.'+hostname+'.'+metricspath
value=int(min(val))
timestamp=int(time.time())

sock = socket.socket()
sock.connect((graphite, graphite_port))
sock.send("%s %d %d\n" % (metric, value, timestamp))
sock.close()

