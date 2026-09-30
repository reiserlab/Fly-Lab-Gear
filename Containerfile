FROM docker.io/jekyll/jekyll:latest

WORKDIR /srv/jekyll
COPY Gemfile Gemfile.lock ./
RUN bundle install

EXPOSE 4000
ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]
