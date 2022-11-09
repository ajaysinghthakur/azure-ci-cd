setup:
	python3 -m venv ~/.udacity-devops

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt && \
		pip install locust && \
		pip install locust-plugins

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb

lint:
	#hadolint Dockerfile #uncomment to explore linting Dockerfiles
	pylint --disable=R,C,W1203,W0702 app.py

all: install lint test
