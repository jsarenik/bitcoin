FROM gitpod/workspace-full

# Install custom tools, runtimes, etc.
# For example "bastet", a command-line tetris clone:
# RUN brew install bastet
#
# More information: https://www.gitpod.io/docs/config-docker/
# :-)

RUN sudo apt-get update
RUN sudo apt-get install -y busybox
RUN sudo apt-get install -y build-essential libtool autotools-dev automake pkg-config bsdmainutils python3
RUN sudo apt-get install -y libevent-dev libboost-dev libboost-system-dev libboost-filesystem-dev libboost-test-dev libsqlite3-dev
RUN sudo rm -rf /var/lib/apt/lists/*

# && pip install \
# python packages
