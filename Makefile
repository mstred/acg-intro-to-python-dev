
run:
	docker-compose run --service-ports --rm --entrypoint bash py

bash:
	docker-compose exec py bash

down:
	docker-compose down

ps:
	docker-compose ps

up:
	docker-compose up -d
