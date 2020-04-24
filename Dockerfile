FROM debian:buster
LABEL maintainer="Clement Sapt <csapt@student.le-101.fr>"
WORKDIR /ft_server
COPY srcs /ft_server
RUN apt-get update && apt-get upgrade -y && apt-get install -y figlet
EXPOSE 80 443	
ENTRYPOINT ["sh", "server.sh"]