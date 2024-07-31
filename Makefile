.PHONY: certs postgres mongodb sqlserver redis memcached etcd all

certs:
	@docker-compose up --build --no-deps -d certs-generator

postgres:
	@docker-compose up --build --no-deps -d postgres

mongodb:
	@docker-compose up --build --no-deps -d mongodb

sqlserver:
	@docker-compose up --build --no-deps -d sqlserver

redis:
	@docker-compose up --build --no-deps -d redis

memcached:
	@docker-compose up --build --no-deps -d memcached1
	@docker-compose up --build --no-deps -d memcached2
	@docker-compose up --build --no-deps -d memcached3
	@docker-compose up --build --no-deps -d memcached4
	@docker-compose up --build --no-deps -d memcached5

etcd:
	@docker-compose up --build --no-deps -d etcd

all:
	@make postgres
	@make mongo
	@make sqlserver
	@make redis
	@make memcached
	@make etcd
