#!/usr/bin/env python3
import sys
import argparse
import flask
import json
import config
import psycopg2
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/')
def home():
    return flask.render_template('home.html')

# , methods=['POST']
@app.route('/country')
def countryname():
    # countryname = flask.request.args.get("countryname")
    return flask.render_template('home.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('A tiny Flask application, including API')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)
