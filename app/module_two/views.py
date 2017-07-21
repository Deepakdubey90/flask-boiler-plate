# -*- coding: utf-8 -*-
from flask import Blueprint

module_two = Blueprint(
    'module_two',
     __name__,
     static_folder='static',
     template_folder='templates',
     static_url_path='/static/module-two'
)

@module_two.route('/module-two/hello-world')
def welcome():
    return 'Hello World !!!'
