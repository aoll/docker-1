docker build -t t3b .;
docker stop t3r;
docker rm t3r;
docker run --name t3r -it -p 9987:9987/udp t3b;
