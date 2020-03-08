FROM ubuntu:latest
MAINTAINER waynemystir "waynemystir@gmail.com"

RUN apt-get update \
  && apt-get install -y python3-pip python3-dev \
  && cd /usr/local/bin \
  && ln -s /usr/bin/python3 python \
  && pip3 install --upgrade pip

COPY de.sh .
RUN chmod +x de.sh
ENTRYPOINT ./de.sh
