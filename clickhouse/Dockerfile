FROM yandex/clickhouse-server:20.6.8

WORKDIR /usr/src

RUN apt-get update && \
  apt-get -y install python2 curl git nano && \
  git clone https://github.com/yndx-metrika/logs_api_integration.git /usr/src && \
  curl https://bootstrap.pypa.io/get-pip.py --output get-pip.py && \
  python2 get-pip.py && \
  cd /usr/src && \
  pip install requests