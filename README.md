# osmosis

### This repository is to build an 8 node OSMOSIS RPC cluster behind a NGNIX load balancer.

To use: clone this repository, edit config.toml to add your Moniker, Peristen Peers and for RPC availability make sure:
```  
# TCP or UNIX socket address for the RPC server to listen on  
laddr = "tcp://0.0.0.0:26657"  
```  

Now deploy to Akash
