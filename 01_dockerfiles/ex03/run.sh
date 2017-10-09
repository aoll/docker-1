docker build -t test/gogs .;
docker rm gogs-run;
docker run --name gogs-run -it -p 3000:3000 test/gogs;
# docker run --name gogs-run -it -p 3000:3000 test/gogs;
