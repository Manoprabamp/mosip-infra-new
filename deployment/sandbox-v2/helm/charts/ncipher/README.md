Helm chart to install NCipher HWSP Docker.  This Docker is needed to connect to HSM as below:

MOSIP App Docker (with client.zip)  --> socket --> HWSP Docker --> HSM

The HSWSP docker must run on every node, hence we are running it as Daoemon set.  

The socker and config folders are mounted.  Socket folder have local mount with hostPath while config folder is available centrally on NFS.
