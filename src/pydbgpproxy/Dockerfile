FROM phusion/baseimage:0.9.16

RUN apt-get update

RUN apt-get install -qy \
    python \
    python-pip

RUN pip install dbgp

ADD   ./pydbgpproxy /pydbgpproxy

RUN mkdir /etc/service/pydbgpproxy

ADD pydbgpproxy.sh /etc/service/pydbgpproxy/run

EXPOSE 9001

# By default, simply start apache.
CMD ["/sbin/my_init"]





