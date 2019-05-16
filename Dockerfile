FROM nvidia/cuda:10.1-devel

LABEL maintainer="Philipp Haussleiter <philipp.haussleiter@innoq.com>"

RUN apt-get -y update && \
    apt-get -y upgrade && \
    apt-get install -y \
    blender && \
    apt-get clean autoclean && \
    apt-get autoremove --yes && \
    rm -rf /var/lib/{apt,dpkg,cache,log}/

# Kudos to https://gist.github.com/balbinus
COPY gpurender.py /gpurender.py
COPY render.sh /render.sh
RUN chmod +x /gpurender.py /render.sh

WORKDIR /
CMD ["./render.sh"]
