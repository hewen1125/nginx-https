FROM centos:7
RUN curl -o /etc/yum.repos.d/CentOS-Base.repo http://mirrors.aliyun.com/repo/Centos-7.repo

RUN yum install -y epel-release && yum clean all
RUN yum install -y nginx  && yum clean all

COPY ./certs /certs
COPY ./nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443
ENTRYPOINT ["nginx"]