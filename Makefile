CLEAR=\033[0m
RED=\033[0;31m
GREEN=\033[0;32m
CYAN=\033[0;36m

help:
	@echo "usage: make <target>"
	@echo ""
	@echo "  Development:"
	@echo "    $(CYAN)init$(CLEAR): Setup the development environment."
	@echo "    $(CYAN)build$(CLEAR): Build the package"
	@echo "    $(CYAN)publish$(CLEAR): Publish to PyPi."
	@echo ""

init:
	pip install --upgrade pip setuptools build twine

build:
	python -m build

publish:
	twine upload -r pypi dist/*
