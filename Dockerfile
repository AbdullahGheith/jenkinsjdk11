FROM centos:7

ENV container docker

RUN yum -y update

RUN yum -y install java-11-openjdk-devel

RUN yum -y install wget

RUN yum -y install initscripts

RUN wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat-stable/jenkins.repo

RUN rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key

RUN yum -y install jenkins

ADD start.sh /

RUN chmod +x /start.sh

ENTRYPOINT ["./start.sh", "start"]
