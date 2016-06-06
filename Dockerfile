FROM hypriot/rpi-node:latest

MAINTAINER leelow <leo@loza.ch>

WORKDIR /home
RUN sudo git clone https://github.com/Leelow/sinopia.git
WORKDIR sinopia
RUN npm install --production && npm cache clean

WORKDIR sinopia
COPY config.yaml config.yaml

EXPOSE 4873
VOLUME /sinopia/storage

CMD ["../bin/sinopia"]