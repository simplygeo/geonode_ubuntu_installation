# GeoNode Installation Script for Ubuntu Linux
GeoNode 3.2.x installation script (based on GeoNode Docker images) for Ubuntu 20.04
<br>
Tested on Ubuntu 20.04 (Lubuntu, WSL2), Ubuntu 18.04 (WSL2)

<hr>

## Usage: Two script installer, check docker first and then proceed GeoNode install

As your Ubuntu user (which can do sudo), do the following:
``` bash
wget https://raw.githubusercontent.com/simplygeo/geonode_ubuntu_installation/main/install-geonode-part1.sh
wget https://raw.githubusercontent.com/simplygeo/geonode_ubuntu_installation/main/install-geonode-part2.sh
chmod +x install-geonode*
./install-geonode-part1.sh
./install-geonode-part2.sh
```


### Checking
After part1, check if docker running correctly:
``` bash
docker run -it hello-world
```

After part2, check if geonode running correctly:
``` bash
cd /opt/geonode
docker logs -f django4geonode
```

<hr>

## Running
Browse GeoNode installation at http://localhost

Default user name: admin
<br>
Default password: admin


### Stop GeoNode
``` bash
  cd /opt/geonode
  docker-compose stop
```

### Start GeoNode
``` bash
  cd /opt/geonode
  docker-compose start
```

### Change GeoNode hostname/ip address:
``` bash
  # stop GeoNode
  cd /opt/geonode
  docker-compose stop
  # edit .env file using text editor (vi/nano/etc), change all occurence of "localhost" into desired hostname/ip address
  # turn GeoNode on again
  cd /opt/geonode
  docker-compose start
```

