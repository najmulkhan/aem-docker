FROM openjdk:8

MAINTAINER Najmul Khan <najmulhasan.khan@gmail.com>

RUN mkdir /opt/aem
WORKDIR /opt/aem/

ENV CQ_JVM_OPTS   "-server -Xmx1524M -Xms1200M -Djava.awt.headless=true"

COPY ./AEM_6.5_Quickstart.jar /opt/aem/AEM_6.5_Quickstart.jar
COPY ./start /opt/aem/start
RUN cd /opt/aem && java -Djava.awt.headless=true -jar AEM_6.5_Quickstart.jar -unpack

ENTRYPOINT ["/opt/aem/start"]
