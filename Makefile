.PHONY: certs \
	postgres mongodb sqlserver redis memcached etcd all \
	stop-postgres stop-mongodb stop-sqlserver stop-redis stop-memcached stop-etcd stop-all

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
	@make mongodb
	@make sqlserver
	@make redis
	@make memcached
	@make etcd

stop-postgres:
	@docker stop postgres

stop-mongodb:
	@docker stop mongodb

stop-sqlserver:
	@docker stop sqlserver

stop-redis:
	@docker stop redis

stop-memcached:
	@docker stop memcached1
	@docker stop memcached2
	@docker stop memcached3
	@docker stop memcached4
	@docker stop memcached5

stop-etcd:
	@docker stop etcd

stop-all:
	@make stop-postgres
	@make stop-mongodb
	@make stop-sqlserver
	@make stop-redis
	@make stop-memcached
	@make stop-etcd