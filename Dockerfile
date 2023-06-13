FROM ruby:3.2-alpine AS builder

COPY version.yaml /version.yaml
COPY install.rb /install.rb
RUN ruby install.rb

FROM ruby:3.2-alpine

COPY --from=builder /usr/local/bundle /usr/local/bundle

ENV RGGEN_PLUGINS rggen-verilog:rggen-vhdl

WORKDIR /work
ENTRYPOINT [ "rggen" ]
