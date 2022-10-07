git clone https://github.com/OpenCTI-Platform/docker.git /opencti/opencti-docker
cd /opencti/opencti-docker
cp .env.sample .env

sudo apt install uuid-runtime

sed -i 's/OPENCTI_ADMIN_TOKEN=ChangeMe_UUIDv4//g' /opencti/opencti-docker/.env

admin_token=$(uuidgen)

echo "
OPENCTI_ADMIN_TOKEN=$admin_token" >> .env 

sudo sysctl -w vm.max_map_count=1048575
echo "
vm.max_map_count=1048575" >> /etc/sysctl.conf

echo "SLEEPOS WATCH OUT"
sleep 2

set -a ; source .env
sudo docker-compose up -d