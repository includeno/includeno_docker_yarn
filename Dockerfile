FROM node:16.3.0

#https://yarnpkg.com/getting-started/install
# Global install yarn package manager
RUN apt-get update && apt-get install -y curl apt-transport-https && \
    apt-get update && apt-get install npm && npm install -g yarn && apt-get install vim
#&& apt-get install -y yarn
WORKDIR /app
