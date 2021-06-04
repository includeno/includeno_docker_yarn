FROM node:16.3.0

#https://yarnpkg.com/getting-started/install
# Global install yarn package manager
RUN apt-get update && apt-get install -y curl apt-transport-https && \
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update &&&& apt-get install npm && npm install -g yarn 
#&& apt-get install -y yarn
WORKDIR /app
