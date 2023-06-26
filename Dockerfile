FROM ruby:2.7.1

RUN apt-get update -qq \
&& curl -sL https://deb.nodesource.com/setup_12.x | bash - \
&& apt-get install -y nodejs \
&& npm i -g redoc-cli

RUN mkdir /app
RUN mkdir /docs
ENV APP_ROOT /app
WORKDIR $APP_ROOT

ADD ./src/Gemfile $APP_ROOT/Gemfile
ADD ./src/Gemfile.lock $APP_ROOT/Gemfile.lock

RUN gem install bundler
RUN bundle install

ADD ./src $APP_ROOT
ADD ./openapi.yml /docs/openapi.yml
