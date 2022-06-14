# Basic Django Blog for Live docker-compose (Nginx-Gunicorn-Django-Postgre)

## Requirements
You need to install `Docker` and `Dockercompose`

## Build
`docker-compose build`

## Makemigrations database
`docker-compose run --rm djangoapp honeypot/manage.py makemigrations`

## Migrate databases
`docker-compose run --rm djangoapp honeypot/manage.py migrate` 

## Collect static files
`docker-compose run --rm djangoapp honeypot/manage.py collectstatic --no-input'`

## Run
`docker-compose up` 

## OR
`docker exec -ti dockerid bash and cd honeypot and python manage.py makemigrations and python manage.py migrate`
