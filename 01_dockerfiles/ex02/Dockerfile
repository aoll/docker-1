FROM ruby

RUN apt-get update && gem install rails && apt-get install nodejs -y

ONBUILD RUN mkdir /app
ONBUILD WORKDIR /app
ONBUILD COPY . /app
ONBUILD RUN bundle install && rake db:create && rake db:migrate


ONBUILD EXPOSE 3000
