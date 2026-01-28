FROM alpine:3.23.3

RUN apk add --no-cache xmltv perl-json

CMD ["tv_grab_zz_sdjson --help"]
