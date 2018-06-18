FROM elixir:1.6.5-alpine
MAINTAINER dyoshikawa

RUN mix --force local.hex
RUN mix --force archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix --force local.rebar

RUN mix phx.new . --app /myproject
WORKDIR /myproject
