FROM ubuntu:bionic
WORKDIR /home/working/
RUN apt update && apt install -y fontconfig libglib2.0-0 libedit2 git curl libpango-1.0-0 libcairo2 apt libpangocairo-1.0-0 libjpeg-dev
RUN curl https://www.cs.utah.edu/plt/snapshots/current/installers/racket-current-x86_64-linux-xenial.sh -o racket-install.sh
RUN sh ./racket-install.sh --create-dir --in-place --dest `pwd`/racket
ENV PATH=/home/working/racket/bin:$PATH


