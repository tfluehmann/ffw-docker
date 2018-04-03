FROM ubuntu:artful 

MAINTAINER Dobin Rutishauser version: 0.1

RUN apt-get update && \
    apt-get install -y curl git wget clang gdb python python-pip binutils-dev libunwind-dev clang && \
    git clone https://github.com/dobin/ffw.git && \
    ( cd ffw && pip install -r requirements.txt ) && \
    ( cd ffw && git clone https://github.com/aoh/radamsa.git && cd radamsa && make ) && \
    ( cd ffw && git clone https://github.com/google/honggfuzz && cd honggfuzz && make )

WORKDIR /ffw

CMD /bin/bash 