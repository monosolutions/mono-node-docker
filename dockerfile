FROM node:24-slim
RUN apt-get update \
    && apt-get install -y jq zip build-essential git curl python3 python3-pip \
    && rm -rf /var/lib/apt/lists/*
RUN ln /usr/bin/python3 /usr/bin/python 
RUN ln /usr/bin/pip3 /usr/bin/pip
RUN pip install awscli
