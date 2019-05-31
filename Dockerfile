FROM ubuntu:xenial

VOLUME ["/data"]
WORKDIR /data

ENV GETH_BASE_URL=https://gethstore.blob.core.windows.net/builds \
  BINARY=geth-alltools-linux-amd64-1.8.27-4bcc0a37.tar.gz

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

COPY *.sh /usr/bin/

CMD ["/usr/bin/run.sh"]

EXPOSE 30301/udp
EXPOSE 30303/udp
