CONTAINER_NAME=finances_app

docker-up:
	docker-compose up -d

docker-down:
	docker-compose down

docker-compose-install:
	make docker-build
	make docker-up
#	make docker-update-env-vars
	make docker-compose-install
	make-docker-clear

docker-build:
	docker-compose build


