FROM ruby:4-slim-bookworm

LABEL com.github.actions.name="Rubocop Code Checks"
LABEL com.github.actions.description="Lint your Ruby code in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"

LABEL maintainer="Luiz Fonseca <eu+rubocop@luiz.cc>"

RUN gem install rubocop -v 1.82.1
RUN gem install rubocop-rspec -v 3.9.0
RUN gem install rubocop-performance -v 1.26.1
RUN gem install rubocop-rails -v 2.34.3

COPY lib /action/lib

ENTRYPOINT ["/action/lib/entrypoint.sh"]
