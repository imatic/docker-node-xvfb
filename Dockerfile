FROM node:latest

RUN apt-get update && apt-get install -y libgtk2.0-0 libnotify-bin libgconf-2-4 libnss3 xvfb libxss1 vim

COPY ./xvfb /etc/init.d/xvfb

ENV DISPLAY :9.0

CMD [ "node" ]
