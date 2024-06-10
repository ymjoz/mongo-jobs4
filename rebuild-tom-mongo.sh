#!/bin/bash

# 定義容器名稱
mongo_container="mongo-tom-1"
mongo_express_container="mongo-express-tom-1"

# 檢查並移除 mongo 容器
if [ $(docker ps -a -q -f name=$mongo_container) ]; then
    docker rm -f $mongo_container
fi

# 檢查並移除 mongo-express 容器
if [ $(docker ps -a -q -f name=$mongo_express_container) ]; then
    docker rm -f $mongo_express_container
fi

# 運行 docker-compose
docker compose up -d

