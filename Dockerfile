FROM alpine:latest

RUN apk add --no-cache openssl

WORKDIR /certs

COPY ./generate_certs.sh ./

CMD ["sh", "/certs/generate_certs.sh"]
