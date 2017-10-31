FROM mhart/alpine-node:latest

ADD ./prepare-chromium.start /
RUN chmod +x /prepare-chromium.start

ADD ./chromium-browser /
RUN chmod +x /chromium-browser

RUN apk --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ add chromium xwininfo xvfb dbus eudev ttf-freefont fluxbox

RUN npm install -g testcafe next-lerna-version

CMD /prepare-chromium.sh