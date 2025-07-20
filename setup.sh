#!/usr/bin/env bash
set -euo pipefail

echo "==> Installing required packages..."
sudo pacman -Syu --noconfirm
sudo pacman -S --noconfirm base-devel docker docker-compose-plugin networkmanager ca-certificates

echo "==> Enabling services..."
sudo systemctl enable --now docker
sudo systemctl enable --now NetworkManager

echo "==> Adding user to docker group..."
sudo usermod -aG docker "$USER"

echo "==> Creating directories..."
mkdir -p ~/.docker/appdata/{plex,sabnzbd,radarr,sonarr,bazarr,jackett,nzbhydra2,jellyseerr,fileflows/data,fileflows/logs,fileflows/common,gluetun}
mkdir -p /mnt/media/data/{media/{movies,tv,music},usenet,torrents,cache/transcodes}

echo "==> Copying env file..."
cp .env.example .env
echo "Edit the .env file with your credentials before running Docker Compose."

echo "==> Done. You can now run:"
echo "   docker compose --env-file .env up -d"

