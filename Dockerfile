FROM ruby:2.4.3

COPY . /captcha

RUN cd /captcha \
    && gem install bundler \
    && bundle install \
    && mv ./docker-entrypoint.sh / \
    && chmod +x /docker-entrypoint.sh

WORKDIR /captcha

EXPOSE 3000

ENTRYPOINT ["/docker-entrypoint.sh"]
