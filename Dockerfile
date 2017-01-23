FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=1.1.0

RUN gem install acpc_poker_player_proxy --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["acpc_poker_player_proxy"]
CMD ["--help"]
