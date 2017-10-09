FROM debian

RUN apt-get update \
	&& apt-get install git -y \
	&& apt-get install curl -y \
	&& apt-get install gcc -y \
	&& apt-get install libpam0g-dev -y \
	&& apt-get install libsqlite3-0 -y

RUN adduser --disabled-login --gecos 'Gogs' git && mkdir -p home/git/local

WORKDIR home/git/local

RUN curl https://storage.googleapis.com/golang/go1.7.4.linux-amd64.tar.gz | tar zxf -

USER git

ENV USER=git
ENV HOME=/home/git
ENV GOPATH=$HOME/go
ENV GOROOT=$HOME/local/go
ENV PATH=$PATH:$GOROOT/bin:$GOPATH/bin

WORKDIR $HOME

RUN echo 'export GOROOT=$HOME/local/go' >> $HOME/.bashrc \
	&& echo 'export GOPATH=$HOME/go' >> $HOME/.bashrc \
	&& echo 'export PATH=$PATH:$GOROOT/bin:$GOPATH/bin' >> $HOME/.bashrc \
	&& . $HOME/.bashrc

RUN mkdir -p $GOPATH/src/github.com/gogits \
	&& cd $GOPATH/src/github.com/gogits \
	&& git clone --depth=1 -b develop https://github.com/gogits/gogs

WORKDIR $GOPATH/src/github.com/gogits/gogs

RUN go get -u -tags "sqlite" github.com/gogits/gogs \
	&& go build -tags "sqlite"

EXPOSE 3000

ENTRYPOINT ["./gogs", "web"]
