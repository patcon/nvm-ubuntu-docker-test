setup:
	docker-compose up --detach --build

test-all: test-debian test-ubuntu

test-debian:
	docker-compose run --rm debian bash -i test.sh

test-ubuntu:
	docker-compose run --rm ubuntu bash -i test.sh
