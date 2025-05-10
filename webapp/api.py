#!/usr/bin/env python3
import sys
import argparse
import flask
import json
import config
import psycopg2

app = flask.Flask(__name__)

@app.route('/')
def hello():
    return 'Hello, this is the flag and countries api.py'


#GET parameters one - colors and/or continent
#returning list of countries with those color/continent
@app.route('/countries2')
def two_parameters_info():
    legal_colors = set(['red','green','blue','gold','white','black','orange'])
    query = '''SELECT flags.countryname
                FROM flags, countries, flags_countries
                WHERE 1=1
                AND flags.id = flags_countries.flag_id
                AND countries.id = flags_countries.country_id'''
    args = flask.request.args.to_dict(flat=False)
    #print(args)
    if 'color' in args:
        for color in args['color']:
            if color not in legal_colors:
                continue
            query += f' AND {color} = 1'
   # print(args['continent'])
    #print(args['continent'] == ['north_america'])
    if 'continent' in args:
        if args['continent'] == ['north_america']:
            query += f' AND continent = 1'
        elif args['continent'] == ['south_america']:
            query += f' AND continent = 2'
        elif args['continent'] == ['europe']:
            query += f' AND continent = 3'
        elif args['continent'] == ['africa']:
            query += f' AND continent = 4'
        elif args['continent'] == ['asia']:
            query += f' AND continent = 5'
        elif args['continent'] == ['oceania']:
            query += f' AND continent = 6'

    #print(query)
    countriesList = []
    try:
        connection = psycopg2.connect(database=config.database,
                                      user=config.user,
                                      password=config.password)
        cursor = connection.cursor()
        cursor.execute(query) 
        for row in cursor:
            countriesList.append(row[0])
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(countriesList)



#helper function to search by country name
def country_name_search_helper(countryname):

    like_argument = '%' + countryname + '%' # 1. isolate the user input
    query = ''' SELECT flags.countryname, flags.mainhue, flags.colours, flags.red, flags.green, flags.blue, flags.gold, flags.white, flags.black, flags.orange, countries.continent, countries.area
                FROM flags, countries, flags_countries
                WHERE flags.countryname LIKE %s 
                AND flags.id = flags_countries.flag_id
                AND countries.id = flags_countries.country_id''' 
    
    #add name and make dictonary
    infoAboutCountry = {'Country Name': countryname}

    try:
        connection = psycopg2.connect(database=config.database,
                                      user=config.user,
                                      password=config.password)
        cursor = connection.cursor()
        cursor.execute(query, (like_argument,)) 
        print('QUERY:', cursor.query.decode('utf-8'))
        for row in cursor:
            if row[0] == countryname: 

                #mainhue
                infoAboutCountry.update({'Mainhue': row[1]})

                #number of colors
                infoAboutCountry.update({'Number Of Colors': row[2]})

                #what colors
                if row[3] == 1:
                    infoAboutCountry.update({'color red': 'red'})
                if row[4] == 1:
                    infoAboutCountry.update({'color green': 'green'})
                if row[5] == 1:
                    infoAboutCountry.update({'color blue': 'blue'})
                if row[6] == 1:
                    infoAboutCountry.update({'color gold': 'gold'})
                if row[7] == 1:
                    infoAboutCountry.update({'color white': 'white'})
                if row[8] == 1:
                    infoAboutCountry.update({'color black': 'black'})
                if row[9] == 1:
                    infoAboutCountry.update({'color orange': 'orange'})

                #continent
                if row[10] == 1:
                    infoAboutCountry.update({'continent': 'North America'})
                elif row[10] == 2:
                    infoAboutCountry.update({'continent': 'South America'})
                elif row[10] == 3:
                    infoAboutCountry.update({'continent': 'Europe'})
                elif row[10] == 4:
                    infoAboutCountry.update({'continent': 'Africa'})
                elif row[10] == 5:
                    infoAboutCountry.update({'continent': 'Asia'})
                else:
                    infoAboutCountry.update({'continent': 'Oceania'})

                #area
                infoAboutCountry.update({'area': row[11]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return infoAboutCountry



#information about one country
@app.route('/country/<countryname>')
def get_info_about_country(countryname):
    finaldict = country_name_search_helper(countryname)
    return json.dumps(finaldict)


@app.route('/countries')
def get_info_about_all_countries():
    query = ''' SELECT flags.countryname
                FROM flags''' 
    
    infoAboutCountries = []

    try:
        connection = psycopg2.connect(database=config.database,
                                      user=config.user,
                                      password=config.password)
        cursor = connection.cursor()
        cursor.execute(query) 
        # print('QUERY:', cursor.query.decode('utf-8'))
        for row in cursor:
            print(row[0])
            infoAboutCountries.append(country_name_search_helper(row[0]))

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(infoAboutCountries)


#gets the mainhue of countries in a specific continent
@app.route('/mainhue/<continent>')
def get_mainhue(continent):
    continent = continent.lower()
    print(continent)
    user_input = '%' + continent + '%'

    print(user_input)

    if (user_input == '%north_america%'):
        where_argument = 1
    elif (user_input == '%south_america%'):
        where_argument = 2
    elif (user_input == '%europe%'):
        where_argument = 3
    elif (user_input == '%africa%'):
        where_argument = 4
    elif (user_input == '%asia%'):
        where_argument = 5
    elif (user_input == '%oceania%'):
        where_argument = 6
    else:
        where_argument = 0
         
    query ='''  SELECT countries.countryname, flags.mainhue
                FROM countries, flags, flags_countries
                WHERE countries.continent = %s
                AND countries.id = flags_countries.country_id
                AND flags.id = flags_countries.flag_id'''
    mainhue_dict = {}
    try:
        connection = psycopg2.connect(database=config.database,
                                      user=config.user,
                                      password=config.password)
        cursor = connection.cursor()
        cursor.execute(query, (where_argument,)) 
        print('QUERY:', cursor.query.decode('utf-8'))
        for row in cursor:
            mainhue_dict[row[0]] = row[1]
            print(mainhue_dict)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(mainhue_dict)


@app.route('/help')
def get_help():
    return flask.render_template('help.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('Flag and Countries Flask API')
    parser.add_argument('host', help='the host on which this application is running')
    parser.add_argument('port', type=int, help='the port on which this application is listening')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)