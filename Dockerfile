FROM ruby:2.4.2
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /newapp
WORKDIR /newapp
ADD Gemfile /newapp/Gemfile
ADD Gemfile.lock /newapp/Gemfile.lock
RUN bundle install
ADD . /newapp