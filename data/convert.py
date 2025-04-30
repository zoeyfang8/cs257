'''
    convert.py
    Zoey Fang and Divya Nandalall, 29 April 2025

    This program converts a CSV file with the format

        title,publication-year,author-surname,author-given-name,author-birth-year,author-death-year

    into separate CSV files with the formats:

        authors.csv: id,surname,given-name,birth-year,death-year
        books.csv: id,title,publication-year
        books_authors.csv: book_id,author_id

    Because everything about this is so specific, I've hard-coded quite a bit of information.
'''

import sys
import csv

def main(input_file_name):
    # Collect the data and assign ids to books and authors
    books_authors = []
    books = {}
    authors = {}
    with open(input_file_name) as f:
        reader = csv.reader(f)
        for book_row in reader:
            title = book_row[0]
            publication_year = book_row[1]
            surname = book_row[2]
            given_name = book_row[3]
            birth_year = book_row[4] if book_row[4] else 'NULL'
            death_year = book_row[5] if book_row[5] else 'NULL'
            author_key = f'{surname}+{given_name}'
            book_key = f'{title}+{publication_year}'

            if book_key not in books:
                books[book_key] = {'id': len(books),
                                   'title': title,
                                   'publication_year': publication_year}

            if author_key not in authors:
                authors[author_key] = {'id': len(authors),
                                       'surname': surname,
                                       'given_name': given_name,
                                       'birth_year': birth_year,
                                       'death_year': death_year}

            books_authors.append((authors[author_key]['id'], books[book_key]['id']))

    # Write to the table files
    with open('authors.csv', 'w') as f:
        writer = csv.writer(f)
        for author_key in authors:
            author = authors[author_key]
            row = (author['id'], author['surname'], author['given_name'], author['birth_year'], author['death_year'])
            writer.writerow(row)

    with open('books.csv', 'w') as f:
        writer = csv.writer(f)
        for book_key in books:
            book = books[book_key]
            row = (book['id'], book['title'], book['publication_year'])
            writer.writerow(row)

    with open('books_authors.csv', 'w') as f:
        writer = csv.writer(f)
        for book_id, author_id in books_authors:
            writer.writerow((book_id, author_id))

if len(sys.argv) != 2:
    print(f'Usage: {sys.argv[0]} original_csv_file', file=sys.stderr)
    exit()

main(sys.argv[1])
