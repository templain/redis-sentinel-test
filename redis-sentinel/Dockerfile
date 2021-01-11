FROM centos:7.9.2009

RUN yum -y update && yum -y install epel-release && yum -y install redis

COPY ./entrypoint.sh /

EXPOSE 26379

CMD ["sh", "/entrypoint.sh"]
