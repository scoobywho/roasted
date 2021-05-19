# Dockerfile V1
# Devops assessment
# 19-05-2021
# Nischal Mathabhik

FROM mariadb:latest

MAINTAINER Nischal Mathabhik
# Expose Port 3307
EXPOSE 3307
# Seting custom ENV
ENV BRUCE=WAYNE

#volume /var/lib/mysql:/var/lib/mysql

VOLUME /BATCAVE
#VOLUME /test /BATCAVE

ENV MYSQL_DATABASE wayneindustries

COPY CreateTable.sql  /docker-entrypoint-initdb.d/
COPY InsertData.sql  /docker-entrypoint-initdb.d/
