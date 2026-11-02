FROM node:24-slim
RUN apt-get update \
    && apt-get install -y jq zip build-essential git curl python3 python3-pip python-is-python3 python3-venv \
    && rm -rf /var/lib/apt/lists/*

RUN python3 -m venv /opt/venv
ENV PATH="/opt/venv/bin:$PATH"

RUN pip install --no-cache-dir awscli    
