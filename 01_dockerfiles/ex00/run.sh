docker build -t ex00b .;
docker stop ex00_run;
docker rm ex00_run;
docker run --name ex00_run -it ex00b
