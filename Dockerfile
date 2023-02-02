FROM signalk/signalk-server AS base

ENV ADMINUSER=admin:admin

USER root
RUN npm update -g
USER node

RUN touch /home/node/.signalk/security.json
COPY startup.sh /home/node/signalk/startup.sh

ENTRYPOINT /home/node/signalk/startup.sh
