# locust service
#
# This Dockerfile will build a locust docker image
#FROM racker/precise-with-updates:latest
FROM library/debian
MAINTAINER Ryan Walker "ryan.walker@rackspace.com"

RUN           apt-get update
RUN           apt-get install -y build-essential git python2.7 python-pip python-dev libevent-dev libzmq3-dev python-virtualenv
RUN           apt-get clean
RUN           git clone https://github.com/locustio/locust.git /opt/locust
RUN	      pip install locustio
#RUN           cd /opt/locust; python setup.py install
RUN           pip install pyzmq
