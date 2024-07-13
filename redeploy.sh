#!/bin/bash

# Navigate to the repository directory
cd /home/andrew/docker-deploys

# Pull the latest changes from GitHub
git pull origin main

# Stop and remove existing containers
#docker compose down -f docker-compose-x.yml

# Stop affected container
docker stop container-name

# Rebuild and start containers
docker compose up -d -f docker-compose-x.yml
