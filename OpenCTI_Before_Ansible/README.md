BE AWARE THIS PROJECTS WILL CREATE TWO DIFFERENT VM
WHEN RUNNING VAGRANT UP, CHOOSE IF YOU WANT TO DEPLOY A MASTER OR A WORKER !
IF THERE ARE MULTIPLE WORKER, HARD CODE THE IPS IN THE VAGRANTFILE

This project prepares for you a "ready to go" environment

Open the project on a terminal and run "vagrant up master" or "vagrant up worker"

It deploys Portainer itself, but to deploy OpenCTI you still need to run some commands :

    On the master node (where the project is deployed) :
        
        docker swarm init --advertise-addr [Master IP] >> swarm_init.txt

    On the slave(s) node(s) :

        JOIN THE SWARM WITH TOKEN RETURNED IN THE LAST COMMAND ON MASTER

    On the master node :

        cd /opencti
        docker stack deploy --compose-file="docker-compose.yml" opencti

Connect to OpenCTI with :
    http://[master_ip]:8080

Connect to Portainer with :
    https://[master_ip]:9443