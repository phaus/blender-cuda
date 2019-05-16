FROM nvidia/cuda:10.1-runtime

LABEL maintainer="Philipp Haußleiter <philipp.haussleiter@innoq.com>"

# Kudos to https://gist.github.com/balbinus
ADD https://gist.githubusercontent.com/balbinus/8cafe43cd72ccec4d649fc1d7cf6387e/raw/252cec1cab7c142506979de23b4e2032533eb7e6/gpurender.py /gpurender.py
ADD https://gist.githubusercontent.com/balbinus/8cafe43cd72ccec4d649fc1d7cf6387e/raw/252cec1cab7c142506979de23b4e2032533eb7e6/render.sh /render.sh

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y \
    blender && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

CMD ["./render.sh"]