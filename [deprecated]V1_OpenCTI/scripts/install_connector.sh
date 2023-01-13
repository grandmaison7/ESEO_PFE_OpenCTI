echo "SLEEPOS WATCH OUT"
sleep 2

cd /opencti/opencti-docker

#!/bin/bash
for i in {1..6}
do
   sed -i '$d' docker-compose.yml
done



echo "
  connector-alienvault:
    image: opencti/connector-alienvault:5.3.16
    environment:
      - OPENCTI_URL=http://opencti:8080
      - CONNECTOR_TYPE=EXTERNAL_IMPORT
      - CONNECTOR_NAME=AlienVault
      - CONNECTOR_SCOPE=alienvault
      - CONNECTOR_CONFIDENCE_LEVEL=15 # From 0 (Unknown) to 100 (Fully trusted)
      - CONNECTOR_UPDATE_EXISTING_DATA=false
      - CONNECTOR_LOG_LEVEL=info
      - ALIENVAULT_BASE_URL=https://otx.alienvault.com
      - ALIENVAULT_API_KEY=d6ea4e2c7dbee9b244d13988a0ce8bd6bcfef850c3f7a4eb8dc101ab73c66d02
      - ALIENVAULT_TLP=White
      - ALIENVAULT_CREATE_OBSERVABLES=true
      - ALIENVAULT_CREATE_INDICATORS=true
      - ALIENVAULT_PULSE_START_TIMESTAMP=2020-05-01T00:00:00                  # BEWARE! Could be a lot of pulses!
      - ALIENVAULT_REPORT_TYPE=threat-report
      - ALIENVAULT_REPORT_STATUS=New
      - ALIENVAULT_GUESS_MALWARE=false                                        # Use tags to guess malware.
      - ALIENVAULT_GUESS_CVE=false                                            # Use tags to guess CVE.
      - ALIENVAULT_EXCLUDED_PULSE_INDICATOR_TYPES=FileHash-MD5,FileHash-SHA1  # Excluded Pulse indicator types.
      - ALIENVAULT_ENABLE_RELATIONSHIPS=true                                  # Enable/Disable relationship creation between SDOs.
      - ALIENVAULT_ENABLE_ATTACK_PATTERNS_INDICATES=true                      # Enable/Disable "indicates" relationships between indicators and attack patterns
      - ALIENVAULT_INTERVAL_SEC=1800" >> docker-compose.yml


alienvault_token=$(uuidgen)

echo "
      - CONNECTOR_ID=$alienvault_token" >> docker-compose.yml

echo "
      ICITOKEN" >> docker-compose.yml

sed -i 's/ICITOKEN/- OPENCTI_TOKEN=${OPENCTI_ADMIN_TOKEN}/g' docker-compose.yml

##########
#A AJOUTER A CHAQUE NOUVEAU CONNECTOR

#echo "
#    restart: always
#    depends_on:
#      - opencti" >> docker-compose.yml




######
#A LAISSER ABSOLUMENT A LA FIN

echo "
    restart: always
    depends_on:
      - opencti
volumes:
  esdata:
  s3data:
  redisdata:
  amqpdata:" >> docker-compose.yml


sudo docker-compose up -d
