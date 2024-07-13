#!/bin/bash

# Navigate to the repository directory
cd /home/andrew/docker-deploys

# Fetch all github file changes
git fetch --all

# Stash/save any local file changes since last pull
git stash

# Pull the latest changes from GitHub
git pull

# Restore local file changes
git stash pop

# Stop affected container
#docker stop homepage
docker stop mealie
#docker stop uptime-kuma

# Pull (latest?) version of compose
#docker pull -f docker-compose-homepage.yml
docker pull -f docker-compose-mealie.yml
#docker pull -f docker-compose-uptimekuma.yml

# Rebuild and start containers
#docker compose up -d -f docker-compose-homepage.yml
docker compose up -d -f docker-compose-mealie.yml
#docker compose up -d -f docker-compose-uptimekuma.yml
