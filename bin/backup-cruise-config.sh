#!/bin/bash

cd $HOME/code/huawei/gocd/doc/ci && ssh scaleworks@10.202.128.5 'sudo cat /etc/go/cruise-config.xml' > cruise-config.xml && git add cruise-config.xml && git commit -m 'Auto update'

