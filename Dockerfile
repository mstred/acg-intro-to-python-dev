FROM curlimages/curl:latest AS aws-downloader

RUN cd /tmp && \
    curl --remote-name https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip && \
    unzip awscli-exe-linux-x86_64.zip

FROM python:3.7-slim AS aws-installer

COPY --from=aws-downloader /tmp/aws/ /aws/
RUN ./aws/install

FROM python:3.7-slim
# install aws-cli
COPY --from=aws-installer /usr/local/ /usr/local/
RUN apt-get update && \
    apt-get install --assume-yes postgresql-client && \
    pip install --no-cache-dir --prefer-binary pipenv && \
    rm -rf /var/lib/apt/lists/*
