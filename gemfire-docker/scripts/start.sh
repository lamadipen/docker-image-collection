#start locator
gfsh start locator --name=locator1 --port=10334 --dir=locator1 --J=-Dpulse.Log-File-Name=pulse9.8.3.log --J=-Dpulse.Log-File-Location=. --J=Dpulse.Log-Level=fine

#start server 
gfsh start server --name=server1 --server-port=40404 --mcast-port=0 --locators=$HOSTNAME[10334]
--statistic-archive-file=server1.gfs --include-system-classpath=true

gfsh start server --name=server2 --server-port=40404 --mcast-port=0 --locators=$HOSTNAME[10334]
--statistic-archive-file=server1.gfs --include-system-classpath=true