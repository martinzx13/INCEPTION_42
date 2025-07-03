
#Name of the file 

NAME:= inception
COMPOSE:= docker compose

up:
	$(COMPOSE) up --build -d

down:
	$(COMPOSE) down 

re: down up 

build:
	$(COMPOSE) build

logs:
	$(COMPOSE) logs -f

clean:
	$(COMPOSE) down -v

.PHONY: up down re build logs clean