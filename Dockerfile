# thephilross/gem-libraries

FROM ubuntu:14.04

MAINTAINER Philipp Ross, philippross369@gmail.com

# update
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -qq && apt-get dist-upgrade -y
RUN apt-get install -y wget vim build-essential && apt-get clean

RUN wget https://www.dropbox.com/s/uxk5fcf20xj1z5l/GEM-binaries-Linux-x86_64-core_i3-20130406-045632.tbz2?dl=0 \
  -O /usr/local/src/GEM-binaries-Linux-x86_64-core_i3-20130406-045632.tbz2 && \
	tar xjf /usr/local/src/GEM-binaries-Linux-x86_64-core_i3-20130406-045632.tbz2 && \
	mv /GEM-binaries-Linux-x86_64-core_i3-20130406-045632 /usr/local/src/

COPY run_gem.sh /usr/local/src/GEM-binaries-Linux-x86_64-core_i3-20130406-045632/bin/run_gem.sh
RUN chmod +x /usr/local/src/GEM-binaries-Linux-x86_64-core_i3-20130406-045632/bin/run_gem.sh

RUN cp -r /usr/local/src/GEM-binaries-Linux-x86_64-core_i3-20130406-045632/bin/* /usr/local/bin/

RUN mkdir /work
WORKDIR /work

ENTRYPOINT [ "/usr/local/bin/run_gem.sh" ]

