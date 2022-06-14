#

.PHONY: run
run:
	python -m main

.PHONY: test
test:
	python -m test

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

.PHONY: requirements
requirements:
	make upgrade-requirements
	make sync-requirements

.PHONY: r
r:
	make upgrade-requirements
	make sync-requirements
