

Issue "vagrant up command"

    1 - Connect to the node with "vagrant ssh"

    2 - Run "uuidgen" and copy the content returned

    3 - Change your directory to /opencti/opencti-docker with the command : cd /opencti/opencti-docker

    4 - nano .env

    5 - Change the following : 
            OPENCTI_ADMIN_TOKEN=ChangeMe_UUIDv4
        to :
            OPENCTI_ADMIN_TOKEN=XXXXXXXXXXXXXXXXXXXXXXXXXXXX  <- the x needs to be replaced with the uuid you got on step 2

    6 - Download and start the docker images :
        set -a ; source .env
        sudo docker-compose up -d

 =====================================================================================

    INSTALLATION DOCKER

sudo apt install apt-transport-https ca-certificates curl gnupg-agent software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y


    INSTALLATION OpenCTI

git clone https://github.com/OpenCTI-Platform/docker.git /opencti/opencti-docker
cd /opencti/opencti-docker


SOIT COPIER EXEMPLE ET MODIFIER :
cp .env.sample .env

SOIT PRENRE LE TEMPLATE :
nano .env

        COPIER : 
------------------------------------------------------------   
OPENCTI_ADMIN_EMAIL=geoffrey.lange@reseau.eseo.fr
OPENCTI_ADMIN_PASSWORD=network
OPENCTI_ADMIN_TOKEN=34883437-c022-49b1-87b6-d023b9d726b1
MINIO_ROOT_USER=opencti
MINIO_ROOT_PASSWORD=network
RABBITMQ_DEFAULT_USER=opencti
RABBITMQ_DEFAULT_PASS=network
CONNECTOR_EXPORT_FILE_STIX_ID=19629bb8-3052-438d-a2f1-13dc9db452f7
CONNECTOR_EXPORT_FILE_CSV_ID=e33a80ef-c246-4944-b16f-3d1173335182
CONNECTOR_EXPORT_FILE_TXT_ID=1ad21397-b074-4466-8814-c3d6adc2f316
CONNECTOR_IMPORT_FILE_STIX_ID=e84e6d4b-6784-4c24-99b9-2d00e981d03e
CONNECTOR_IMPORT_DOCUMENT_ID=daec1b5d-bb0e-4cdf-9e2e-47e78afcadd4
SMTP_HOSTNAME=localhost
ELASTIC_MEMORY_SIZE=4G
------------------------------------------------------------------

GENERATEUR DE UUID : https://www.uuidgenerator.net/

sudo sysctl -w vm.max_map_count=1048575
nano /etc/sysctl.conf

    AJOUTER :
---------------------
vm.max_map_count=1048575
---------------------

set -a ; source .env
sudo docker-compose up -d

        -----------> https://IP:8080


    INSTALLATION PORTAINER

docker volume create portainer_data
docker run -d -p 18000:8000 -p 9443:9443 --name portainer --restart=always -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest

        -----------> https://IP:9443