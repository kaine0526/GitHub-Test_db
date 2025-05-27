FROM ubuntu:latest

RUN apt update -y && apt upgrade -y
RUN apt install -y mariadb-server
RUN apt install -y nginx
RUN apt install -y vim
RUN apt install -y net-tools
COPY startserv.sh /root
RUN chmod 755 /root/startserv.sh

EXPOSE 3306 80
CMD ["/root/startserv.sh"]
