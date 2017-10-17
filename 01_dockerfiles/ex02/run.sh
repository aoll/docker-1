#!/bin/bash
docker build -t ft-rails:5.0.2-on-build .;
cd ~/app_ruby;
docker build -t app-build .;
docker rm ruby42run;
docker run --name ruby42run -it -p 3000:3000 app-build;
