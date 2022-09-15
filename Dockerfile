FROM mysql:debian

#WORKDIR /root
#RUN mkdir /projeto_my
#RUN cd projeto_my

ENV MYSQL_ROOT_PASSWORD=root
#ENV MYSQL_DATABASE=cadastro

RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install vim -y

RUN git clone https://github.com/Zanchetta08/Mysql-Projeto

RUN cp ./Mysql-Projeto/main.sql /docker-entrypoint-initdb.d/

EXPOSE 3306