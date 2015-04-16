FROM ubuntu:14.04

RUN \
    apt-get update && \
    apt-get install -y libtool autoconf automake cmake libncurses5-dev g++ pkg-config unzip git curl

RUN \
    git clone https://github.com/neovim/neovim.git nvim

RUN \
    cd nvim && \
    git checkout 5709181243536f0a9f23dc4a8d87fe75cc32537d^ && \
    make && make install && \
    cd ../ && rm -rf nvim

ENTRYPOINT nvim