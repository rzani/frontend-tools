# nicolaspio/frontend-tools
# VERSION 0.0.1

FROM debian:jessie
MAINTAINER Nicolas Pio <nicolaspiof@gmail.com>

# global dependencies / build-essentials and cli-tools
RUN \
    apt-get update && \
    apt-get install -y build-essential git curl && \
    apt-get clean
    # rm -rf /var/lib/apt/lists/*

# Install nodejs and npm
RUN \
    apt-get -y install \
    nodejs \
    npm && \
    ln -s /usr/bin/nodejs /usr/bin/node

# Install principles packages
RUN \
    npm install -g \
    gulp \
    grunt-cli \
    bower \
    less \
    browserify

# # Install ruby (2.1 in jessie) and frontend gems (without docs)
# # ruby-dev is needed for building native compass extensions
RUN \
    apt-get install -y ruby ruby-dev && \
    gem install sass --no-document && \
    gem install compass --no-document && \
    gem install scss-lint --no-document

# Add user frontend
RUN \
    adduser --disabled-password --gecos '' frontend

WORKDIR /home/frontend
