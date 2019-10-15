.PHONY: help build push

default: help

help:
	@echo "Available targets:"
	@echo "    build"
	@echo "    push"


build:
	docker build -t hakansson/hsson-dev:latest .

push:
	docker push hakansson/hsson-dev:latest
