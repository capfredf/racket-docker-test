FROM ubuntu:bionic
ENV AUTHOR=Docker
WORKDIR /home/working/
CMD apt update && apt install fontconfig libglib2.0-0 libedit2 git curl
CMD curl https://www.cs.utah.edu/plt/snapshots/current/installers/racket-current-x86_64-linux-xenial.sh -o racket-install.sh


