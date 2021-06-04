#参考 https://github.com/kkarczmarczyk/docker-node-yarn/blob/master/latest/Dockerfile

FROM node:16.3.0

#https://yarnpkg.com/getting-started/install
# Global install yarn package manager
RUN /bin/sh -c 'apt-get update && apt-get install npm  && apt-get install vim'
#&& apt-get install -y yarn
RUN npm install -g yarn
WORKDIR /app
