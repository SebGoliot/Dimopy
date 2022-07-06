FROM python:3-slim
RUN apt update -y

WORKDIR /opt/api

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

COPY requirements.txt /opt/api/requirements.txt
RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt
