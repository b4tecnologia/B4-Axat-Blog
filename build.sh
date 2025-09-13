#!/bin/bash
app_name=strapi
docker build . -t $app_name:1.0
cd /opt/apps/ && docker compose up -d $app_name
