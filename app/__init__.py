# -*- coding: utf-8 -*-
from flask import Flask

from . import settings
from .module_one import module_one
from .module_two import module_two

# create app
app = Flask(__name__)
app.config.from_object(settings)

# register blueprints/modules
app.register_blueprint(module_one)
app.register_blueprint(module_two)
