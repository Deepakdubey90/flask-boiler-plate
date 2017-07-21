.PHONY: clean install test run all

clean:
	find . -type f -name '*.pyc' -delete
	find . -type f -name '*.log' -delete

install:
	pip install -r requirements.txt

test:
	nosetests --exe --nocapture --verbose --with-coverage --cover-package=app tests

run:
	PYTHONPATH=$(PWD) FLASK_APP=app python -m flask run -h 0.0.0.0 -p 8000

all: clean install test run
