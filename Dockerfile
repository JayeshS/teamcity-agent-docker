FROM jetbrains/teamcity-agent

LABEL Maintainer "Jayesh Shere" jshere@expedia.com
LABEL Description="Teamcity Agent" Version="3.2"

USER root

## Install latest agent
COPY buildAgent.zip /home/buildagent/buildagent.zip
RUN unzip -o /home/buildagent/buildagent.zip -d /opt/buildagent/

#Install npm
RUN apt-get update
RUN apt-get -y install nodejs
RUN apt-get -y install npm
RUN ln -s /usr/bin/nodejs /usr/bin/node
