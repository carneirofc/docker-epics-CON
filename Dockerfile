# Base EPICS Container with Python3 and Python2
#
# Author: Cláudio Ferreira Carneiro
# LNLS - Brazilian Synchrotron Light Source Laboratory
#
 
FROM debian:stretch-slim

MAINTAINER Claudio Carneiro <claudio.carneiro@lnls.br>

WORKDIR /root/

# Github environment variables 
ENV STREAM_IOC_REPO https://github.com/lnls-sirius/stream-ioc.git
 
# IOC operation variables
ENV TOP /opt/stream-ioc
ENV EPICS_VERSION R3.15.5
ENV ARCH linux-x86_64
ENV EPICS_HOST_ARCH linux-x86_64
ENV EPICS_BASE /opt/epics-${EPICS_VERSION}/base
ENV EPICS_MODULES /opt/epics-${EPICS_VERSION}/modules
ENV ASYN /opt/epics-${EPICS_VERSION}/modules/asyn4-33
ENV CALC /opt/epics-${EPICS_VERSION}/modules/synApps/calc-R3-7-1
ENV PATH ${EPICS_BASE}:/opt/procServ:${PATH}
 
ENV MAKE_JOBS 32

# Pyepics libca location 
ENV PYEPICS_LIBCA ${EPICS_BASE}/lib/${ARCH}/libca.so

# Install Everything 
RUN mkdir /root/init
COPY init/ /root/init/
RUN  /bin/bash /root/init/install.sh 
 
# Loop to keep the program alive  
CMD ["sh", "-c", "/root/init/loop.sh"]
