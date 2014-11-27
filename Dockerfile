FROM ubuntu:14.04

RUN \
    apt-get update && \
    apt-get install -y libtool autoconf automake cmake libncurses5-dev g++ pkg-config unzip git curl

RUN \
    git clone https://github.com/neovim/neovim.git nvim && \
    cd nvim && \
    make && make install && \
    cd ../ && rm -rf nvim

ENTRYPOINT nvim