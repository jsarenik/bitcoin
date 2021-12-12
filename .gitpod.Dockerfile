FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
# :-)

RUN sudo apt-get update
# dist-upgrade is not needed and takes too long
#RUN sudo apt-get -y dist-upgrade
RUN sudo apt-get -y install busybox
RUN brew install tmate
RUN sudo apt-get -y install build-essential libtool autotools-dev automake pkg-config bsdmainutils python3
RUN sudo apt-get -y install libevent-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-test-dev libsqlite3-dev
# C-Lightning extra dependencies
RUN sudo apt-get -y libsecp256k1-dev gettext
RUN sudo rm -rf /var/lib/apt/lists/*
#RUN pyenv install
# pyenv is done from .gitpod file (by user in workspace)

# && pip install \
# python packages
