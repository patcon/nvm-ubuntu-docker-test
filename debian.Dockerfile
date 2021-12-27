FROM debian:latest

# install nvm, not available from apt
# https://github.com/nvm-sh/nvm
RUN apt-get update && apt-get install wget -y
RUN wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

RUN mkdir -p /node_modules/.bin && chmod --recursive 777 /node_modules
