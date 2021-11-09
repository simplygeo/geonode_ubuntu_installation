# GeoNode Installation Script for Ubuntu Linux
GeoNode 3.2.x installation script (based on GeoNode Docker images) for Ubuntu 20.04

### Usage:
As your ubuntu user (which can do sudo), do the following:
``` bash
wget https://raw.githubusercontent.com/simplygeo/geonode_ubuntu_installation/main/install-geonode-part1.sh
wget https://raw.githubusercontent.com/simplygeo/geonode_ubuntu_installation/main/install-geonode-part2.sh
chmod +x install-geonode*
./install-geonode-part1.sh
./install-geonode-part2.sh
```

Tested on Ubuntu 20.04 (Lubuntu, WSL2), Ubuntu 18.04 (WSL2)

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

### Running
Browse GeoNode installation at http://localhost
