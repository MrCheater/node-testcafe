FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y curl git xvfb ttf-freefont fluxbox dbus chromium-browser
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN npm install -g testcafe next-lerna-version

ADD ./prepare-chromium.sh /
RUN chmod +x /prepare-chromium.sh

ADD ./chromium /
RUN chmod +x /chromium
