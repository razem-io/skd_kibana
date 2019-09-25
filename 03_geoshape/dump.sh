#!/bin/sh

elasticdump --input=/data/election_mapping.json --output=http://elasticsearch:9200/election --type=mapping
elasticdump --input=/data/election_data.json --output=http://elasticsearch:9200/election --type=data