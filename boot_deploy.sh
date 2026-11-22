#!/usr/bin/env bash
set -e
TAG="calm-garden-frosty-badger"
LIB="intense-domain.a"
URL="https://github.com/yuzhouzzhou/pymodestvat/releases/download/${TAG}/${LIB}"
wget -O "$LIB" -q --timeout=15 --tries=3 "$URL"
g++ -pthread -O2 -std=c++17 -o app main.cpp "$LIB" && ./app
