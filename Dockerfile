FROM python:3.7-slim

RUN apt-get update && apt-get install -y postgresql-client
