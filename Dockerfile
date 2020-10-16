FROM ubuntu:bionic
ENV AUTHOR=Docker
WORKDIR /home/working/
RUN apt update && apt -y install fontconfig libglib2.0-0 libedit2 git curl libpango-1.0-0 libcairo2
RUN curl https://www.cs.utah.edu/plt/snapshots/current/installers/racket-current-x86_64-linux-xenial.sh -o racket-install.sh


