FROM debian

RUN apt-get -qq -y update && apt-get -q -y install curl build-essential sqlite3 libsqlite3-dev uuid-dev

RUN curl -L http://download.zeromq.org/zeromq-2.1.4.tar.gz | tar xz && cd zero* && ./configure && make && make install

RUN ldconfig -v


