install: 
	pip install --upgrade pip&&\
		pip install -r requiremnts.txt

test:
	python -m pytest -vv --cov=hello test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C hello.py
all: install lint test format
