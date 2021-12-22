FROM node:lts-bullseye

# install nvm, not available from apt
# https://github.com/nvm-sh/nvm
RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

COPY test.sh package.json ./
COPY bin/ ./bin/
RUN chmod u+x ./bin/*
