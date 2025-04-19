#!/usr/bin/env python3
'''
    api.py
    Zoey Fang
    4/19/25
    Credit: used Jeff's flask_example.py as a example

'''
import sys
import argparse
import flask
import json
import csv

app = flask.Flask(__name__)

colors = {'red':10, 'green':11, 'blue':12, 'gold':13, 'white':14, 'black':15, 'orange':16}

@app.route('/')
def hello():
    return 'Hello, this is the flag color api.py'

@app.route('/color/<color>')
def get_countries_by_color(color):
    color = color.lower() #make sure color is lowercase
    if color not in colors:
        return json.dumps('invalid color error')
    
    countriesWithColor = []

    #open csv file, credit: used csv-wrangler.py example from Jeff
    with open('flags.csv') as f:
        reader = csv.reader(f)
        #skipping header line, syntax found https://www.geeksforgeeks.org/python-read-csv-column-into-list-without-header/
        header = next(reader)

        countrynameIndex = header.index("name")

        for row in reader:
            if row[colors[color]] == '1': #1 means the color is there
                countriesWithColor.append(row[countrynameIndex])

        return json.dumps(countriesWithColor)

@app.route('/help')
def get_help():
    return flask.render_template('help.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('Color of Flag Flask API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)

