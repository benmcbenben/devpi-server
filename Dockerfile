FROM ubuntu:trusty

# let Upstart know it's in a container
ENV container docker

RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get install python-pip \
    curl \
    net-tools \
    bash-completion

RUN pip install -q -U devpi-server

RUN mkdir /devpi-server
RUN mkdir /devpi-server/server-root

COPY bin/entrypoint.sh /devpi-server/entrypoint.sh

EXPOSE 3141

ENTRYPOINT ["/devpi-server/entrypoint.sh"]

RUN echo OK
