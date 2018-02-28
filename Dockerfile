FROM centos7

ENV NODE_VERSION 9.6.1

RUN curl "https://nodejs.org/dist/v$NODE_VERSION/node-v$NODE_VERSION.tar.gz" \
  && tar xzvf node-v* \
  && cd node-v* \
  && yum install gcc gcc-c++

CMD [ "node" ]
