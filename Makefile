.PHONY: usage init test ci release

# Colors
NC=\x1b[0m
L_GREEN=\x1b[32;01m

## usage: print useful commands
usage:
	@echo "$(L_GREEN)Choose a command: $(PWD) $(NC)"
	@bash -c "sed -ne 's/^##//p' ./Makefile | column -t -s ':' |  sed -e 's/^/ /'"

## init:
init:
	pip install pipenv --upgrade
	pipenv install --dev --skip-lock

## test: run tests
test:
	pytest

## ci: Circle CI runner
ci:
	circleci local execute

## lint: Flake8
lint:
	pipenv run flake8

## release: Build and Release on Pypi
release:
	pip install 'twine>=1.5.0'
	python setup.py sdist bdist_wheel --universal
	twine upload dist/*
	rm -fr build dist .egg requests.egg-info
