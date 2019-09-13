FROM jruby:9.1.12.0-jdk
RUN apt-get update && apt-get install -y libzmq3-dev
ADD . /activerecord-jdbcvertica-adapter
WORKDIR /activerecord-jdbcvertica-adapter
ENV DOCKER=1
RUN bundle install
