#!/bin/bash

get_latest_release() {
  URL="https://api.github.com/repos/segmentio/chamber/releases/latest"
  curl --silent $URL |
    grep '"tag_name":' | 
    sed -E 's/.*"([^"]+)".*/\1/'
}

version=$(get_latest_release)
file=chamber-$version-linux-amd64
src=https://github.com/segmentio/chamber/releases/download/$version/$file
dest=/usr/local/bin/chamber

curl --output $dest -L $src &&
chmod +x $dest
