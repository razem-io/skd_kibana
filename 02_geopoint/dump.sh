#!/bin/sh

tar -xf /data/dump.tar.xz -C /tmp
elasticdump --input=/tmp/dump/here_mapping.json --output=http://elasticsearch:9200/here --type=mapping
elasticdump --input=/tmp/dump/here_data.json --output=http://elasticsearch:9200/here --type=data
rm -R /tmp/dump
