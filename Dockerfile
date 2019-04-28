FROM jenkins
USER root


RUN apt-get update  

RUN apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -yqq

RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   xenial \
   stable"
RUN apt-get update

RUN apt-get -yqq install docker.io

#ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
