FROM ubuntu:bionic
WORKDIR /home/working/
RUN apt update && apt install -y fontconfig libglib2.0-0 libedit2 git curl libpango-1.0-0 libcairo2 apt libpangocairo-1.0-0 libjpeg-dev libgtk2.0-0 xvfb
RUN curl https://www.cs.utah.edu/plt/snapshots/current/installers/racket-current-x86_64-linux-xenial.sh -o racket-install.sh
ENV PATH=/home/working/racket/bin:$PATH
RUN git clone https://github.com/capfredf/typed-racket/
WORKDIR /home/working/typed-racket
RUN git checkout -b del-imp origin/del-imp
RUN sh ../racket-install.sh --create-dir --in-place --dest /home/working/racket && curl https://gist.githubusercontent.com/capfredf/34dc29633089795c45550031325db07b/raw/3e80d227c33ae544956d8a6c6d7bfabba3ddf4f0/gistfile1.txt -o hi.sh &&  sh hi.sh

