FROM openjdk:8
WORKDIR /opt/pivotal
ADD pivotal-gemfire-9.8.3.tgz .
ENV PATH $PATH:/opt/pivotal/pivotal-gemfire-9.8.3/bin
ENV GEMFIRE /opt/pivotal/pivotal-gemfire-9.8.3

ADD scripts/start.sh .
RUN chmod 777 start.sh
# Default ports:
# RMI/JMX 1099
# REST 8080
# PULSE 7070
# LOCATOR 10334
# CACHESERVER 40404
# UDP port: 53160
EXPOSE  8080 10334 40404 40405 1099 7070
# SET VOLUME directory
#VOLUME ["/opt/pivotal/workdir/storage"]

#RUN java -version
ENTRYPOINT ["./start.sh"]
