FROM elixir:1.6.5-alpine
MAINTAINER dyoshikawa

RUN mix local.hex
RUN mix archive.install https://github.com/phoenixframework/archives/raw/master/phx_new.ez
RUN mix local.rebar

RUN mix phx.new . --app /myproject
WORKDIR /myproject
