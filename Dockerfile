FROM ubuntu:trusty
MAINTAINER "Andrew Rothstein" andrew.rothstein@gmail.com

ENV DRILL_VERSION 0.7.0
ENV DRILL_NAME apache-drill-${DRILL_VERSION}
ENV DRILL_ARCHIVE ${DRILL_NAME}.tar.gz
RUN apt-get update ; apt-get upgrade -y
RUN apt-get install -y tar wget openjdk-7-jre
RUN wget http://www.apache.org/dyn/closer.cgi/drill/drill-0.7.0/${DRILL_ARCHIVE}
RUN mkdir -p /opt/drill
RUN tar -xvzf ${DRILL_ARCHIVE} -C /opt/drill
WORKDIR /opt/drill/${DRILL_NAME}