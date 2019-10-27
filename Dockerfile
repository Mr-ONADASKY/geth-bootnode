FROM ubuntu:xenial

VOLUME ["/data"]
WORKDIR /data

ENV GETH_BASE_URL=https://gethstore.blob.core.windows.net/builds \
  BINARY=geth-alltools-linux-amd64-1.9.6-bd059680.tar.gz

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

COPY *.sh /usr/bin/
RUN chmod +x /usr/bin/run.sh

CMD ["/usr/bin/run.sh"]

EXPOSE 30301/udp
EXPOSE 30303/udp
