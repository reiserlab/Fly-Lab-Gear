FROM docker.io/jekyll/jekyll:latest

# Install gems outside /srv/jekyll so the repo mounted there at runtime
# (and any stale Gemfile.lock in it) doesn't shadow them
WORKDIR /usr/src/gems
COPY Gemfile ./
RUN bundle install
ENV BUNDLE_GEMFILE=/usr/src/gems/Gemfile

WORKDIR /srv/jekyll
EXPOSE 4000
ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload", "--force_polling"]
