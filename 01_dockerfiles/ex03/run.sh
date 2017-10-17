docker build -t test/gogs .;
docker stop gogs-run;
docker rm gogs-run;
docker run --name gogs-run  -d  -p 3000:3000 test/gogs;
docker exec -it gogs-run bash;
