FROM yandex/clickhouse-server:20.6.8

COPY ./run/run.sh /run/run.sh

RUN apt-get update && \
  apt-get -y install python2 curl git nano && \
  curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py && \
  python2 get-pip.py

WORKDIR /usr/src

ENTRYPOINT ["bash", "/run/run.sh"]