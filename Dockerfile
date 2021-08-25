FROM ruby:2.6.5-alpine
RUN apk add --no-cache --update build-base linux-headers git

LABEL com.github.actions.name="Rubocop Code Checks"
LABEL com.github.actions.description="Lint your Ruby code in parallel to your builds"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"

LABEL maintainer="Luiz Fonseca <eu+rubocop@luiz.cc>"

COPY lib /action/lib
ENTRYPOINT ["/action/lib/entrypoint.sh"]
