FROM ruby:3.3-alpine AS builder

RUN apk update && \
  apk add --no-cache build-base

COPY version.yaml /version.yaml
COPY install.rb /install.rb
RUN ruby install.rb

FROM ruby:3.3-alpine

COPY --from=builder /usr/local/bundle /usr/local/bundle

ENV RGGEN_PLUGINS rggen-verilog:rggen-veryl:rggen-vhdl

WORKDIR /work
ENTRYPOINT [ "rggen" ]
