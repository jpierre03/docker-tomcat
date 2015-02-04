FROM tomcat:jre8
MAINTAINER Jean-Pierre PRUNARET <jean-pierre+git@prunetwortk.fr>


# from https://github.com/tutumcloud/tutum-docker-tomcat/blob/master/8.0/Dockerfile
RUN apt-get update && \
    apt-get install -yq --no-install-recommends wget pwgen ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

ENV CATALINA_HOME /usr/local/tomcat/

ADD create_tomcat_admin_user.sh /create_tomcat_admin_user.sh
ADD run.sh /run.sh
RUN chmod +x /*.sh

EXPOSE 8080
CMD ["/run.sh"]
