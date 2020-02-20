FROM jenkins/jenkins:latest
USER root
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    lsb-release

# the URL should be https://download.docker.com/linux/debian/gpg
# not https://download.docker.com/linux/ubuntu/gpg
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88 

# the URL should be https://download.docker.com/linux/debian/gpg
# not https://download.docker.com/linux/ubuntu/gpg
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \	
   $(lsb_release -cs) \
   stable"
RUN apt-get update 
RUN apt-get install -y docker-ce docker-ce-cli containerd.io

# add jenkins user to docker group to be able to 
# run docker from inside jenkins container
RUN usermod -aG docker jenkins

