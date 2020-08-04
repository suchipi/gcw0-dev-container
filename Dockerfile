FROM ubuntu:20.04

ADD http://www.gcw-zero.com/files/opendingux-gcw0-toolchain.2014-08-20.tar.bz2 /root/
RUN mkdir -p /opt && cd /opt && tar jxvf /root/opendingux-gcw0-toolchain.2014-08-20.tar.bz2

RUN echo 'export PATH="$PATH:/opt/gcw0-toolchain/usr/bin"' >> /root/.bashrc

CMD /bin/bash
