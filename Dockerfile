FROM jetbrains/teamcity-agent

LABEL Maintainer "Jayesh Shere" jshere@expedia.com
LABEL Description="Teamcity Agent" Version="1.0"

USER root

## Install latest agent
COPY buildAgent.zip /home/buildagent/buildagent.zip
RUN unzip -o /home/buildagent/buildagent.zip -d /opt/buildagent/
