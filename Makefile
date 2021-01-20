#
# To be run from the production host
#

.PHONY: run
run:
	docker-compose up --build

.PHONY: inspect-prod-container
inspect-prod-container:
	docker-compose build
	docker-compose run papi bash

#
# To be run inside the devcontainer
#

# The difference from "run" is that hot reloading is enabled
.PHONY: run-dev
run-dev:
	#add commands to be trigger development enviroment run, below an example
	# uvicorn app.main:app --reload --host "0.0.0.0" --port "8080"

.PHONY: compile-requirements
compile-requirements:
	pip-compile requirements.in
	pip-compile requirements-dev.in

# You don't need to run this, you can just recreate the container and it will run in the postCreateCommand
.PHONY: sync-requirements
sync-requirements:
	pip-sync requirements.txt requirements-dev.txt

.PHONY: upgrade-requirements
upgrade-requirements:
	pip-compile --upgrade requirements.in
	pip-compile --upgrade requirements-dev.in
