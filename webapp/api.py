#!/usr/bin/env python3
import sys
import argparse
import flask
import json
import csv

app = flask.Flask(__name__)

colors = {'red':5, 'green':6, 'blue':7, 'gold':8, 'white':9, 'black':10, 'orange':11}

@app.route('/')
def hello():
    return 'Hello, this is the flag and countries api.py'


#ask about how the app route and defs would look for the /countries 
#with the get parameters and how to define that
#especially since it's optional to put colors or contienent 
#and we have two seperate lists for both, no overlap between the two
#GET parameters one - confused
@app.route('/countries')



#information about one country
@app.route('/country/<countryname>')
def get_info_about_country(countryname):
    infoAboutCountry = []

    with open('../data/allflags.csv') as f:
        reader = csv.reader(f)

        #name, continent, area, mainhue, number of colors 
        for row in reader:
            if row[0] == countryname: 
                #name
                infoAboutCountry.append(row[0])

                #continent
                if row[1] == '1':
                    infoAboutCountry.append('North America')
                elif row[1] == '2':
                    infoAboutCountry.append('South America')
                elif row[1] == '3':
                    infoAboutCountry.append('Europe')
                elif row[1] == '4':
                    infoAboutCountry.append('Africa')
                elif row[1] == '5':
                    infoAboutCountry.append('Asia')
                else:
                    infoAboutCountry.append('Oceania')

                #area
                infoAboutCountry.append(row[3])

                #mainhue
                infoAboutCountry.append(row[12])

                #number of colors
                infoAboutCountry.append(row[4])

        return json.dumps(infoAboutCountry)


@app.route('/help')
def get_help():
    return flask.render_template('help.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('Flag and Countries Flask API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)