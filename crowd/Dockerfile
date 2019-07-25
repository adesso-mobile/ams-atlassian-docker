FROM debian:stretch

EXPOSE 8095

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y \
	wget

RUN wget https://www.atlassian.com/software/crowd/downloads/binary/atlassian-crowd-3.4.5.tar.gz

RUN apt-get install -y \
	openjdk-8-jre-headless

RUN tar -xzf atlassian-crowd-3.4.5.tar.gz -C /opt/
RUN ln -s /opt/atlassian-crowd-3.4.5 /opt/crowd

RUN mkdir /var/crowd-home
RUN echo "crowd.home=/var/crowd-home" >> /opt/crowd/crowd-webapp/WEB-INF/classes/crowd-init.properties

COPY crowd-home/ /var/crowd-home

COPY ./configureAndStartCrowd.sh .
CMD [ "./configureAndStartCrowd.sh" ]
