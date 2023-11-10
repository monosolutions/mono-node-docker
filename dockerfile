FROM node:16-slim
RUN apt-get update 
RUN apt-get install -y jq zip build-essential git curl python3.7 python3-pip
RUN ln /usr/bin/python3.7 /usr/bin/python
RUN ln /usr/bin/pip3 /usr/bin/pip
RUN pip3 install awscli