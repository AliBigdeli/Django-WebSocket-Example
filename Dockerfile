FROM python:3.9-slim-buster

LABEL maintainer="bigdeli.ali3@gmail.com"

ENV PYTHONUNBUFFERED=1

WORKDIR /core

# RUN mkdir /static
# RUN mkdir /media

COPY requirements.txt /core/

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

COPY ./core/ /core/