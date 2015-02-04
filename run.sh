#!/bin/bash

# from https://github.com/tutumcloud/tutum-docker-tomcat/blob/master/8.0/run.sh

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

exec ${CATALINA_HOME}/bin/catalina.sh run
