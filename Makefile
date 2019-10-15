.PHONY: help build push insert_tracking

default: help

help:
	@echo "Available targets:"
	@echo "    build"
	@echo "    push"
	@echo "    insert_tracking"

build:
	docker build -t hakansson/hsson-dev:latest .

push:
	docker push hakansson/hsson-dev:latest

insert_tracking:
ifndef TRACKING_CODE
	$(error TRACKING_CODE is not set)
endif
	@echo "Using tracking code \"${TRACKING_CODE}\""
	sed -i "" 's/<ANALYTICS CODE HERE>/${TRACKING_CODE}/g' src/*.html
