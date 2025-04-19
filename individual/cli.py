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

def get_parsed_arguments():
    parser = argparse.ArgumentParser(description='Prints list of countries that have that color')
    parser.add_argument('color', metavar='color', nargs='+', help='the color looking for')
    parsed_arguments = parser.parse_args()
    return parsed_arguments