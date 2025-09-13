@echo off
set app_name=strapi
docker build . -t %app_name%:1.0
cd ../B4-Orchestrator && docker compose up -d %app_name%
docker image prune -f