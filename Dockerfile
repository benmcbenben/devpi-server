FROM python:3.4

RUN pip install -q -U devpi-server

EXPOSE 3141

RUN mkdir /tmp/devpi && devpi-server --init --serverdir=/tmp/devpi && devpi-server --start --serverdir=/tmp/devpi
