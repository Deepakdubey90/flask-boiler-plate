## Flask App Boiler Plate ##

This is a flask project template which is supposed to help developers.

You can start the sample app using `make run`

```
akhillawrence@ubuntu:~/dev/flask-boiler-plate$ make run
PYTHONPATH=/home/akhillawrence/dev/flask-boiler-plate FLASK_APP=app python -m flask run -h 0.0.0.0 -p 8000
 * Serving Flask app "app"
 * Running on http://0.0.0.0:8000/ (Press CTRL+C to quit)
```

There are two sample endpoints I have created. In case you want to see flask in action

```
akhillawrence@ubuntu:~$ curl http://localhost:8000/module-one/hello-world
Hello World !!!

akhillawrence@ubuntu:~$ curl http://localhost:8000/module-two/hello-world
Hello World !!!
```

Other tasks/targets available

```
make clean  # clean junk files
make install  # install dependencies
make run  # run the app
make tests  # run unit tests
make all  # single command for all above mentioned tasks
```
