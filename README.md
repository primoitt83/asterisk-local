# asterisk-local

Requires:
 - docker
 - docker-compose

Create "net" network
````
 docker network create --driver=bridge --subnet=172.25.0.0/16 net
````
Build Asterisk's image
````
cd /opt
git clone https://github.com/primoitt83/asterisk-local.git
cd asterisk-local/build-asterisk
chmod +x build.sh
./build.sh
````

Start Asterisk
````
cd /opt/asterisk-local
docker-compose up -d
````