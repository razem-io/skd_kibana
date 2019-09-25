# Softwerkskammer Duesseldorf - Beautiful functional Kibana Dashboards

## Requirements

* docker (Docker CE is all you need)
* docker-compose
* prepare your system to be able to run elasticsearch by configuring your virtual memory on your host system => https://www.elastic.co/guide/en/elasticsearch/reference/current/vm-max-map-count.html


## Topics

* Introduction to Kibana
* Basic visualisations
* Advanced visualisations
* Geo visualisations including shapes
* Building and using a Dashboard

## Usage

In this directory you find the following chapters:

* 01_work_entries
* 02_geopoint
* 03_geoshape

### Start

Navigate with you terminal in a chapter of your choice and type `docker-compose up -d`. After a few seconds you should be able to access Kibana at: http://localhost:5601

### Stop

Once you have finished, you can shutdown the stack by typing `docker-compose down`. If you don't want to keep the data for later use type `docker-compose down -v` instead.

### Troubleshooting

There are several things that can go wrong. Most of the time elasticsearch has a problem. First check if elasticsearch is still running with `docker-compose ps`.  
Next it is also always a good idea to check the logs: `docker-compose logs -f elasticsearch`.

Can't solve it yourself? Feel free to open an issue here on github.