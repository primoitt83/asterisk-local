# asterisk-local

Requires:
 - docker
 - docker-compose

Local ip: 192.168.50.119
Domain: asterisk.local

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

Check buided image:

````
docker images
REPOSITORY   TAG           IMAGE ID       CREATED              SIZE
asterisk16   latest        15e56464f06e   28 seconds ago       851MB
<none>       <none>        9619b693547d   About a minute ago   1.87GB
debian       buster-slim   794cb9f638eb   46 hours ago         69.3MB

````
Remove intermediate image:
`````
docker rmi 9619b69
`````

Start Asterisk
````
cd /opt/asterisk-local
docker-compose up -d
````