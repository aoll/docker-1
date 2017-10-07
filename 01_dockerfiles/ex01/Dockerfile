FROM debian

RUN apt-get update \
	&& apt-get install wget -y \
	&& useradd ts3 \
	&& mkdir /home/ts3 \
	&& chown -R ts3: /home/ts3 \
	&& cd /home/ts3 \
	&& wget http://dl.4players.de/ts/releases/3.0.11.4/teamspeak3-server_linux-amd64-3.0.11.4.tar.gz \
	&& tar -xvf teamspeak3-server_linux-amd64-3.0.11.4.tar.gz \
	&& rm teamspeak3-server_linux-amd64-3.0.11.4.tar.gz



USER ts3

ADD t3.ini /home/ts3

EXPOSE 80

#ENTRYPOINT ["./home/ts3/teamspeak3-server_linux-amd64/ts3server_startscript.sh", "start",  "inifile=/home/ts3/t3.ini"]
