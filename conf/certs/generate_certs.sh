#!/bin/bash

COUNTRY="CM"
REGION="Centre"
CITY="Yaounde"
ORG="."
ORG_UNIT="."
NAME="application"
EMAIL="email@example.com"
CONF="/C=$COUNTRY/ST=$REGION/L=$CITY/O=$ORG/OU=$ORG_UNIT/CN=$NAME/emailAddress=$EMAIL"

mkdir -p generated
cp ./generate_certs.sh ./generated/
cd ./generated/

openssl genrsa -out ca.key 2048
openssl req -x509 -new -nodes -key ca.key -days 365 -out ca.crt -subj $CONF

openssl genrsa -out server.key 2048
openssl req -new -key server.key -out server.csr -subj $CONF
openssl x509 -req -in server.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out server.crt -days 365

openssl genrsa -out client.key 2048
openssl req -new -key client.key -out client.csr -subj $CONF
openssl x509 -req -in client.csr -CA ca.crt -CAkey ca.key -CAcreateserial -out client.crt -days 365

rm -rf ./generate_certs.sh
cd ../
