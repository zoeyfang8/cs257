'''
Implementing a Simple Command-Line Interface in Python Assignment
Zoey Fang
4/19/25

NAME: cli.py - command-line interface exercise
SYNOPSIS: python3 cli.py color
DESCRIPTION: Shows a list of the countries that have the specified color
'''
import argparse
import sys 
import csv

#credit: used argparse-sample.py example from Jeff
def get_parsed_arguments():
    parser = argparse.ArgumentParser(description='Prints list of countries that have that color')
    parser.add_argument('color', metavar='color', nargs='+', help='the color looking for')
    parsed_arguments = parser.parse_args()
    return parsed_arguments

def country_color(color):
    colors = {'red':10, 'green':11, 'blue':12, 'gold':13, 'white':14, 'black':15, 'orange':16}

    #make sure color entered is one of the options
    if color not in colors:
        print(f"Invalid color error. Please enter a valid color")
        exit()

    #list to put the countries with that color in
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

        return countriesWithColor
    
    #credit: used example code from Jeff's argparse-sample.py and sysargv-sample.py
    def main():
        arguments = get_parsed_arguments()
        color = arguments.color.lower() #added .lower() in case user didn't use lower case
        countries = country_color(color)

        if len(countries) > 0:
            print(f"Countries with the color {color}:")
            for country in countries:
                print(country)
        else:
            print(f"No countries with the color {color}")

    if __name__ == '__main__':
        main()

