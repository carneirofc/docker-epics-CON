#!/bin/sh
git pull
docker run -d   -p 4161:4161 \
                -p 5065:5065/udp \
                -p 5064:5064/udp \
                --name con-epics lnlscon/epics-r3.15.5:latest
 
