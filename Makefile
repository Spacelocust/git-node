COMPOSE=docker compose
EXEC=$(COMPOSE) exec api-service

start:
	$(COMPOSE) build --force-rm
	$(COMPOSE) up -d --remove-orphans --force-recreate

up:
	$(COMPOSE) up -d --remove-orphans

stop:
	$(COMPOSE) stop

down:
	$(COMPOSE) down

ssh:
	$(EXEC) sh

lint:
	$(EXEC) yarn lint
