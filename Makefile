.PHONY: help clean build deploy

default: help

help:
	@echo "Available targets:"
	@echo "    clean"
	@echo "    build"
	@echo "    deploy"


clean:
	rm -rf public/

build: clean
ifndef TRACKING_CODE
	$(error TRACKING_CODE is not set)
endif
	@echo "Using tracking code \"${TRACKING_CODE}\""
	cp -R src/ public/
	sed -i "" 's/<ANALYTICS CODE HERE>/${TRACKING_CODE}/g' public/*.html

deploy: build
	firebase login
	firebase deploy
