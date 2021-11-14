#!/bin/bash

sudo apt-get update -y
sudo apt-get install -y software-properties-common
sudo add-apt-repository universe
sudo apt-get install -y git-core git-buildpackage debhelper devscripts
sudo apt-get install -y apt-transport-https ca-certificates curl gnupg-agent

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

sudo apt-get update -y
sudo apt-get install -y docker-ce docker-ce-cli containerd.io docker-compose
sudo apt autoremove --purge

sudo service docker start

sudo usermod -aG docker $USER
newgrp docker << END
        sudo mkdir -p /opt/geonode/
        sudo usermod -a -G www-data $USER
        sudo chown -Rf $USER:www-data /opt/geonode/
        sudo chmod -Rf 775 /opt/geonode/

        cd /opt
        git clone https://github.com/GeoNode/geonode.git -b 3.2.x geonode

        cd /opt/geonode
        docker-compose -f docker-compose.yml pull
        docker-compose -f docker-compose.yml up -d
END
