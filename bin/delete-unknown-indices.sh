#!/bin/sh

h DELETE "http://10.202.128.33:9200/`h 'http://10.202.128.33:9200/_cat/indices?v' | egrep -v 'topbeat|app-|.kibana|health' | cut -d' ' -f6 | xargs | tr ' ' ','`"

