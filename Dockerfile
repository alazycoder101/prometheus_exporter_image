ARG RUBY_VERSION=3.3
ARG GEM_VERSION=
# alpine or slim
ARG BASE=alpine

FROM ruby:${RUBY_VERSION}-${BASE}

RUN gem install --no-doc --version=${GEM_VERSION} prometheus_exporter

EXPOSE 9394
ENTRYPOINT ["prometheus_exporter", "-b", "ANY"]
