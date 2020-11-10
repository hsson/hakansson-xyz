.PHONY: help insert_tracking

default: help

help:
	@echo "Available targets:"
	@echo "    insert_tracking"

insert_tracking:
ifndef TRACKING_CODE
	$(error TRACKING_CODE is not set)
endif
	@echo "Using tracking code \"${TRACKING_CODE}\""
	sed -i "" 's/<ANALYTICS CODE HERE>/${TRACKING_CODE}/g' public/*.html
