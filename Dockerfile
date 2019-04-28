FROM jenkins
USER root


RUN apt-get update  

RUN apt-get -yqq install docker.io

#ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
