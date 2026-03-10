FROM alpine:3.19

RUN apk add --no-cache pure-ftpd shadow

COPY run.sh /run.sh
RUN chmod +x /run.sh

EXPOSE 21 30000-30009

CMD ["/run.sh"]
