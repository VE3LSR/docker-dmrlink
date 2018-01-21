FROM python:2.7.14
MAINTAINER ve3yca@ve3yca.com

# RUN apt-get update && apt-get install -yq git && apt-get clean && rm -rf /var/lib/apt/lists/* /var/tmp/* /tmp/*

WORKDIR /opt/

RUN git clone -b IPSC_Bridge https://github.com/n0mjs710/DMRlink.git

WORKDIR /opt/DMRlink

ADD dmr_utils* /tmp

RUN pip install /tmp/dmr_utils*

RUN pip install --no-cache-dir -r requirements.txt

#CMD ./dmrlink.py
CMD python ./IPSC_Bridge.py