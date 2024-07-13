# My Docker Deployments

This is my repo for managing my dockerfile deployments.

These scripts allow me to update and upgrade the docker compose files that are used on my self-hosted docker server.

## How it works

Making any changes to the docker compose file and publishing the changes will initiate the GitHub Workflow action that:

1. Sends a webhook request to my public-facing Home Assistant server.
2. The Home Assistant server then sends an internal webhook to my docker host server.
2. This webhook runs `redeploy.sh` on the server.
3. The `redeploy.sh` script handles:
    - Pulling down the latest changes from this repo.
    - Stopping any containers that require updating.
    - Pulls down the latest update for the container.
    - Re-deployes the container.

## Future functionality

I plan to have the script pause my Uptime Kuma monitoring automatically so that my uptime dashboard isn't sending me a notification that the service(s) are down.

I'll be filling out the `prerequisites.sh` for the commands and setup I had to do on my server to get everything working on that end as well.

##

### Why is this repo public?

This repository is public because it could help someone on the internet who wants to achieve the same thing as I've done here.

### Can others contribute?

This is a highly customised deployment script, for primarily my own use-case. Should you want to use any of my code, I recommend that you clone and custome for your own use.