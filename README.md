# Arch Media Server Stack

This project sets up a barebones Arch Linux media server with:
- Plex (media streaming)
- Overseerr (media requests)
- Sonarr, Radarr, Bazarr (media management)
- SABnzbd + NZBHydra2 (Usenet)
- Jackett + FlareSolverr (torrent proxy)
- FileFlows (automation)

## Requirements:
- Arch Linux (fresh or minimal)
- Docker
- VPN credentials for Gluetun (or replace Gluetun as needed)

## 🚀 Setup

1. Clone the repo:
   ```bash
        git clone https://github.com/michaeldevelopscode/arch-media-server.git
        cd arch-media-server
   ```
2. Run the setup script: ```./setup.sh```
3. Edit the .env file with your secrets: ```nano .env```
4. Start the stack: ```docker compose --env-file .env up -d```
