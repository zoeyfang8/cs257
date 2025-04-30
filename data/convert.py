'''
    convert.py
    Zoey Fang and Divya Nandalall, 29 April 2025

    This program converts a CSV file with the format

        name,continent,image,area,colours,red,green,blue,gold,white,black,orange,mainhue

    into separate CSV files with the formats:

        flags.csv: id,name,image,colours,red,green,blue,gold,white,black,orange,mainhue
        countries.csv: id,name,continent,area
        flags_countries.csv: flags_id,countries_id

    Because everything about this is so specific, I've hard-coded quite a bit of information.
'''

import sys
import csv

def main(input_file_name):
    # Collect the data and assign ids to flags and countries
    flags_countries = []
    flags = {}
    countries = {}
    with open(input_file_name) as f:
        reader = csv.reader(f)
        for row in reader:
            name = row[0]
            continent = row[1]
            image = row[2] if row[2] else 'NULL'
            area = row[3]
            colours = row[4]
            red = row[5]
            green = row[6]
            blue = row[7]
            gold = row[8]
            white = row[9]
            black = row[10]
            orange = row[11]
            mainhue = row[12]
            flag_key = f'{name}'
            country_key = f'{name}'

            if flag_key not in flags:
                flags[flag_key] = {'id': len(flags),
                                   'name': name,
                                   'image': image,
                                   'colours': colours,
                                   'red': red,
                                   'green': green,
                                   'blue': blue,
                                   'gold': gold,
                                   'white': white,
                                   'black': black,
                                   'orange': orange,
                                   'mainhue': mainhue}

            if country_key not in countries:
                countries[country_key] = {'id': len(countries),
                                       'name': name,
                                       'area': area,
                                       'continent': continent,}

            flags_countries.append((countries[country_key]['id'], flags[flag_key]['id']))

    # Write to the table files
    with open('countries.csv', 'w') as f:
        writer = csv.writer(f)
        for country_key in countries:
            country = countries[country_key]
            row = (country['id'], country['name'], country['area'], country['area'], country['continent'])
            writer.writerow(row)

    with open('flags.csv', 'w') as f:
        writer = csv.writer(f)
        for flag_key in flags:
            flag = flags[flag_key]
            row = (flag['id'], flag['name'], flag['colours'], flag['red'], flag['green'], flag['blue'], flag['gold'], flag['white'], flag['black'], flag['orange'], flag['mainhue'])
            writer.writerow(row)

    with open('flags_countries.csv', 'w') as f:
        writer = csv.writer(f)
        for flag_id, country_id in flags_countries:
            writer.writerow((flag_id, country_id))

if len(sys.argv) != 2:
    print(f'Usage: {sys.argv[0]} original_csv_file', file=sys.stderr)
    exit()

main(sys.argv[1])
