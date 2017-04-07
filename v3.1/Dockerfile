FROM jshere1/teamcity-agent:v3

LABEL Maintainer "Jayesh Shere" jshere@expedia.com
LABEL Description="Teamcity Agent" Version="3.1"

USER root

RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm

RUN ln -s /usr/bin/nodejs /usr/bin/node
