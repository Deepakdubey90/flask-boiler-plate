## Tests Associated With The App ##
All the unit tests associated with the app goes here.
You can run the tests using `make tests`

```
(env) akhillawrence@ubuntu:~/dev/flask-boiler-plate$ make tests
. env/bin/activate
nosetests --exe --nocapture --verbose --with-coverage --cover-package=app tests
This is an sample test in module one ... ok
This is an sample test in module two ... ok

Name                         Stmts   Miss  Cover
------------------------------------------------
app/__init__.py                  8      8     0%
app/module_one/__init__.py       1      1     0%
app/module_one/views.py          4      4     0%
app/module_two/__init__.py       1      1     0%
app/module_two/views.py          4      4     0%
app/settings.py                  0      0   100%
------------------------------------------------
TOTAL                           18     18     0%
----------------------------------------------------------------------
Ran 2 tests in 0.002s

OK
```
