# Usage
## Create a Custom Network: 

```
docker network create --subnet=192.168.1.0/24 my_custom_network
```

## Build Docker Image: 

```
docker build -t my-netcat-image .
```

## Add permissions to files: 

```
chmod 755 nc_server.sh
chmod 755 nc_client.sh
```

## Start server: 

```
docker run -d --name my-netcat-server -v ./:/scripts --net my_custom_network --ip 192.168.1.100 my-netcat-image
```

## Start client: 

```
docker run -d --name my-netcat-client -v ./:/scripts --network my_custom_network  my-netcat-image /scripts/nc_client.sh
```
when client is started it automatically send message to server

## Verify the IP Address
You can verify that the container has the correct IP address by inspecting it:
```
docker inspect my_container
```

## Commands to verify containers connectivity between container
```
docker exec -it my-netcat-client ping my-netcat-server
```



