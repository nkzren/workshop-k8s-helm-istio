tag := registry.docker.elo7aws.com.br/marotinus

.PHONY: build-prod
build-prod:
	docker build -t $(tag):prod --target estagio_de_prd .

.PHONY: build-dev
build-dev:
	docker build -t $(tag):dev --target estagio_de_dev .

.PHONY: run-prod
run-prod: build-prod
	docker run --rm -p 3000:3000 $(tag):prod

.PHONY: run-dev
run-dev: build-dev
	docker run --rm -p 3000:3000 $(tag):dev
