FROM debian

RUN apt-get update \
	&& pwd \
	&& apt-get install wget -y \
	&& useradd ts3 \
	&& mkdir /home/ts3 \
	&& chown -R ts3: /home/ts3 \
	&& cd /home/ts3 \
	&& wget http://dl.4players.de/ts/releases/3.0.11.4/teamspeak3-server_linux-amd64-3.0.11.4.tar.gz \
	&& tar -xvf teamspeak3-server_linux-amd64-3.0.11.4.tar.gz \
	&& rm teamspeak3-server_linux-amd64-3.0.11.4.tar.gz

USER ts3

WORKDIR /home/ts3/teamspeak3-server_linux-amd64

ADD ts3server.ini .

EXPOSE 9987
#udp must be bind <port>:9987/udp at the runtime
EXPOSE 10011
EXPOSE 30033
EXPOSE 41144

ENTRYPOINT ["sh", "ts3server_minimal_runscript.sh", "inifile=ts3server.ini"]
