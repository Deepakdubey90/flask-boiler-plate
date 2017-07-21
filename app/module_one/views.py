# -*- coding: utf-8 -*-
from flask import Blueprint

module_one = Blueprint(
    'module_one',
     __name__,
     static_folder='static',
     template_folder='templates',
     static_url_path='/static/module-one'
)

@module_one.route('/module-one/hello-world')
def welcome():
    return 'Hello World !!!'
