FROM debian:wheezy

MAINTAINER andre.seduc@gmail.com

# Install basics 
RUN apt-get update &&  \
    apt-get install -y git wget curl && \
    apt-get clean

RUN curl -sL https://deb.nodesource.com/setup_0.12 | bash -

RUN apt-get update &&  \
    apt-get install -y nodejs build-essential && \
    ln -s /usr/bin/nodejs /usr/local/bin/node && \ 
    apt-get clean

# Install npm packages
RUN npm install -g cordova ionic grunt-cli gulp bower

RUN ionic start ionic-demo sidemenu

EXPOSE 8100 35729

WORKDIR ionic-demo

CMD ["ionic", "serve", "--all", "--port", "8100", "--livereload-port", "35729"]