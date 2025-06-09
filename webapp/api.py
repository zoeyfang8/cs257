#!/usr/bin/env python3
import sys
import argparse
import flask
import json
import config
import psycopg2

api = flask.Blueprint('api', __name__)

@api.route('/')
def hello():
    return json.dumps()


#GET parameters one - colors and/or continent
#returning list of countries with those color/continent
@api.route('/countries2')
def two_parameters_info():
    legal_colors = set(['red','green','blue','gold','white','black','orange'])
    query = '''SELECT flags.countryname, flags.flagimage
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
   
    if 'continent' in args:
        if args['continent'] == ['North America']:
            query += f' AND continent = 1'
        elif args['continent'] == ['South America']:
            query += f' AND continent = 2'
        elif args['continent'] == ['Europe']:
            query += f' AND continent = 3'
        elif args['continent'] == ['Africa']:
            query += f' AND continent = 4'
        elif args['continent'] == ['Asia']:
            query += f' AND continent = 5'
        elif args['continent'] == ['Oceania']:
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
            nameImageDict = {'name': row[0], 'image': row[1]}
            countriesList.append(nameImageDict)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(countriesList)



#helper function to search by country name
def country_name_search_helper(countryname):

    like_argument = '%' + countryname + '%' # 1. isolate the user input
    query = ''' SELECT flags.countryname, flags.mainhue, flags.colours, flags.red, flags.green, flags.blue, flags.gold, flags.white, flags.black, flags.orange, countries.continent, countries.area, flags.flagimage
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
                colorlist = []
                if row[3] == 1:
                    colorlist.append('red')
                    infoAboutCountry.update({'colors': colorlist})
                if row[4] == 1:
                    colorlist.append('green')
                    infoAboutCountry.update({'colors': colorlist})
                if row[5] == 1:
                    colorlist.append('blue')
                    infoAboutCountry.update({'colors': colorlist})
                if row[6] == 1:
                    colorlist.append('gold')
                    infoAboutCountry.update({'colors': colorlist})
                if row[7] == 1:
                    colorlist.append('white')
                    infoAboutCountry.update({'colors': colorlist})
                if row[8] == 1:
                    colorlist.append('black')
                    infoAboutCountry.update({'colors': colorlist})
                if row[9] == 1:
                    colorlist.append('orange')
                    infoAboutCountry.update({'colors': colorlist})

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

                #image
                infoAboutCountry.update({'flagimage': row[12]})

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return infoAboutCountry



#information about one country
@api.route('/country/<countryname>')
def get_info_about_country(countryname):
    finaldict = country_name_search_helper(countryname)
    return json.dumps(finaldict)


@api.route('/countries')
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
            infoAboutCountries.append(row[0])

        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(infoAboutCountries)


#gets the mainhue of countries in a specific continent
@api.route('/mainhue/<continent>')
def get_mainhue(continent):
    continent = continent.lower()
    print(continent)
    user_input = '%' + continent + '%'

    print(user_input)

    if (user_input == '%north america%'):
        where_argument = 1
    elif (user_input == '%south america%'):
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
         
    query ='''  SELECT countries.countryname, flags.mainhue, flags.flagimage
                FROM countries, flags, flags_countries
                WHERE countries.continent = %s
                AND countries.id = flags_countries.country_id
                AND flags.id = flags_countries.flag_id'''
    mainhue_list = []
    try:
        connection = psycopg2.connect(database=config.database,
                                      user=config.user,
                                      password=config.password)
        cursor = connection.cursor()
        cursor.execute(query, (where_argument,)) 
        print('QUERY:', cursor.query.decode('utf-8'))
        for row in cursor:
            mainhue_dict = {'name': row[0], 'mainhue': row[1], 'image': row[2]}
            mainhue_list.append(mainhue_dict)
        cursor.close()
        connection.close()
    except Exception as e:
        print(e, file=sys.stderr)

    return json.dumps(mainhue_list)


@api.route('/help')
def get_help():
    return flask.render_template('help.html')