#!/bin/sh

sudo docker build . -t reimagined/node-testcafe
sudo docker push reimagined/node-testcafe