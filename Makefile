install:
	python -m pip install --upgrade pip
	pip install -r requirements.txt

install-azure:
	python -m pip install --upgrade pip
	pip install -r requirements-azure.txt

format:
	black hello.py

lint:
	pylint --disable=C0114,C0115 hello.py

test:
	python -m pytest -v --cov=.

all: install lint test format


