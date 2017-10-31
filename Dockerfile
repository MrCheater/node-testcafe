FROM mhart/alpine-node:latest

RUN apk add --no-cache git

ADD ./prepare-chromium.sh /
RUN chmod +x /prepare-chromium.sh

ADD ./chromium /
RUN chmod +x /chromium

RUN apk --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add chromium xwininfo xvfb dbus eudev ttf-freefont fluxbox

RUN npm install -g testcafe next-lerna-version

CMD /prepare-chromium.sh