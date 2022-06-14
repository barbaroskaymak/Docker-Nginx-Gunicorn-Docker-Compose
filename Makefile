.PHONY: docs clean

COMMAND = docker-compose run --rm blog_djangoapp /bin/bash -c

all: build test

build:
	docker-compose build

run:
	docker-compose up

migrate:
	$(COMMAND) 'python honeypot/manage.py makemigrations; python honeypot/manage.py migrate; done'

collectstatic:
	docker-compose run --rm blog_djangoapp honeypot/manage.py collectstatic --no-input


dockerclean:
	docker system prune -f
	docker system prune -f --volumes
