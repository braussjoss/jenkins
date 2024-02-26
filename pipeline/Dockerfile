FROM jenkins/jenkins

USER root

#RUN apk add python3 --break-system-packages && \
#    curl -O https://bootstrap.pypa.io/get-pip.py && \
#    python3 get-pip.py && \
#    pip install ansible --upgrade

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get install -y python3-pip

#Install Python
#RUN curl -O https://bootstrap.pypa.io/pip/2.7/get-pip.py && \
#    apt-get update && \
#    apt-get install -y python && \
#    python get-pip.py && \
#    pip install ansible --upgrade && \
#    pip install awscli --upgrade

# Install ansible
#RUN curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py" && python get-pip.py


#RUN pip install -U ansible

# Install Docker

RUN apt-get update && \
apt-get -y install apt-transport-https \
     ca-certificates \
     curl \
     gnupg2 \
     software-properties-common && \
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release; echo "$ID")/gpg > /tmp/dkey; apt-key add /tmp/dkey && \
add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/$(. /etc/os-release; echo "$ID") \
   $(lsb_release -cs) \
   stable" && \
apt-get update && \
apt-get -y install docker-ce

# COmpose

RUN curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose

RUN usermod -aG docker jenkins

USER jenkins

