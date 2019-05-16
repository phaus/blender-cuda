FROM nvidia/cuda:10.1-runtime

LABEL maintainer="Philipp Haußleiter <philipp.haussleiter@innoq.com>"

# Kudos to https://gist.github.com/balbinus
COPY gpurender.py /gpurender.py
COPY render.sh /render.sh
RUN chmod +x /gpurender.py /render.sh

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y \
    blender && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

WORKDIR /
CMD ["./render.sh"]