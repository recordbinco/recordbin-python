.PHONY: docs
init:
	pip install pipenv --upgrade
	pipenv install --dev --skip-lock
test:
	# This runs all of the tests, on both Python 2 and Python 3.
	tox

ci:
	pipenv run flake8
	pipenv run pytest

pypi:
	pip install 'twine>=1.5.0'
	python setup.py sdist bdist_wheel --universal
	twine upload dist/*
	rm -fr build dist .egg requests.egg-info

