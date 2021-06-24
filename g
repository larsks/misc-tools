#!/usr/bin/python

import click
import urllib.parse as urlparse
import webbrowser


@click.command()
@click.argument('query', nargs=-1)
def google_query(query):
    query = urlparse.quote(' '.join(query))
    webbrowser.open('https://google.com/search?q={}'.format(query))


if __name__ == '__main__':
    google_query()
