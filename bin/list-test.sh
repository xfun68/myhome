#!/bin/bash

grep 'com.thoughtworks.adapter.funcational.* > .* STARTED' | cut -d' ' -f5-7 | sed 's/com.thoughtworks.adapter.funcational.//' | cat -n

