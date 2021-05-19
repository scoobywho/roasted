#!/bin/bash
#Nischal Mathabhik
#Devops Assesment

echo Installing required packages
yum -y install docker

echo Startng Docker
systemctl start docker
systemctl enable docker

# Check for container and remove

if [ "$(docker ps -qa -f name=ALFRED)" ]; then
    echo ":: Found container - ALFRED"
    if [ "$(docker ps -q -f name=$CNAME)" ]; then
        echo ":: Stopping running container - ALFRED"
        docker stop ALFRED;
    fi
    echo ":: Removing stopped container - ALFRED"
    docker container rm ALFRED;
fi

# create container from image called ALFRED
docker run -d --name ALFRED -p 3307:3306 --restart always -e MYSQL_ROOT_PASSWORD=thisisadatabasepassword123456789! -v /var/lib/mysql:/var/lib/mysql mariadb-devops

