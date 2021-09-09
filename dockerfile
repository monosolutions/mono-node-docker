FROM node:10.19.0-slim
RUN apt-get update 
RUN apt-get install -y jq zip build-essential python2.7 python2.7-dev git curl
RUN ln /usr/bin/python2.7 /usr/bin/python2 
RUN curl -O  https://bootstrap.pypa.io/pip/2.7/get-pip.py && python2.7 get-pip.py && rm get-pip.py
RUN pip install awscli
