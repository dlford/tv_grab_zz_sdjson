FROM alpine:3.23.2

RUN apk add --no-cache xmltv perl-json

CMD ["tv_grab_zz_sdjson --help"]
