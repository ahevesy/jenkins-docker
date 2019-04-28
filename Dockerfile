FROM jenkins
USER root


RUN apt-get update \
    && apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common -y 

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   xenial \
   stable"

RUN apt-get update  

RUN apt-get install docker-ce docker-ce-cli containerd.io -y

#ENTRYPOINT ["/sbin/tini", "--", "/usr/local/bin/jenkins.sh"]
