#!/bin/bash

OUTPUT_DIR=~/.local/bin

while getopts ":o:" option; do
  case $option in
    o) OUTPUT_DIR=$OPTARG
  esac
done

cd /tmp
wget -O clean "https://raw.githubusercontent.com/kalmbach/clean/refs/heads/main/clean"
chmod a+x clean
mkdir -p $OUTPUT_DIR
mv clean $OUTPUT_DIR

echo "Installed in $OUTPUT_DIR/clean"
