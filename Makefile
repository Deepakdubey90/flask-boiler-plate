.PHONY: clean system-packages python-packages install tests run all

clean:
	find . -type f -name '*.pyc' -delete
	find . -type f -name '*.log' -delete

system-packages:
	sudo apt install python-pip -y

python-packages:
	pip install virtualenv -U
	virtualenv env
	. env/bin/activate
	pip install -r requirements.txt

install: system-packages python-packages

tests:
	. env/bin/activate
	nosetests --exe --nocapture --verbose --with-coverage --cover-package=app tests

run:
	. env/bin/activate
	PYTHONPATH=$(PWD) FLASK_APP=app python -m flask run -h 0.0.0.0 -p 8000

all: clean install test run
