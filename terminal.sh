#!/bin/sh

# it ~> interactive mode : to insert some commands directly in cli
docker run ubuntu /bin/bash 

# just exit ubuntu container
exit

# List all running containers
docker ps
 
# List all existing containers (active or not)
docker ps -a

# -p ~> port 
#  |___ params: e.g. 8080:80 ~> <local_port>:<server_port> (port mapping / port redirection)
# --detach or -d ~> detached mode (to run in the background of the terminal)
docker run nginx -p 8080:80 -d

# Remove the container after 'stop' execution
# in other words, after the command: docker stop <container-id>
docker run --rm nginx -p 8080:80 -d

# List all containers-id
# -a or --all ~> Show all containers
# -q or --quiet ~> Only display numeric IDs
docker ps -a -q

# Remove all containers using a sub-query
# docker rm $(docker ps -a -q) -f ~> j/in the Windows/MacOS/GitBash

# List all docker images
# Docker images are like 'container templates'. They are immutable and all images have a recording layer to store the user's files.
docker images

# Remove an image
# docker rmi <image-name>

# List containers (docker-compose)
docker-compose ps

# Create and start containers of docker-compose.yaml
# -d ~> detached mode
docker-compose up -d

# Stop and remove containers, networks, images and volumes
docker-compose down

# Run a command in a running container
# open a container terminal /bin/bash
docker exec -it <container-id> /bin/bash

