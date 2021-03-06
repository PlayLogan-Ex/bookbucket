#!usr/bin/env python3

import sys
import os
from argparse import ArgumentParser

# XAMPP Location
lampp = '/opt/lampp/lampp'

# Installer For XAMPP on Linux
def install():
    os.system('wget -O xampp.run https://downloadsapachefriends.global.ssl.fastly.net/\
            xampp-files/7.2.7/xampp-linux-x64-7.2.7-0-installer.run')
    os.system('sudo chmod 755 xampp.run')
    os.system('sudo ./xampp.run')
    os.system('rm -rf xampp.run')

# Main Function
def main():
    parser = ArgumentParser(description='XAMPP Installer | Author: Totul (fb.com/rytotul).')

    parser.add_argument('-l', '--launch', action='store_true', default=False,
            help='Launches XAMPP')

    parser.add_argument('-s', '--stop', action='store_true', default=False,
            help='Stops XAMPP')

    args = parser.parse_args()

    if args.launch:
        if os.path.isfile(lampp):
            os.system('sudo ' + lampp + ' start')
        else:
            install()
    elif args.stop:
        os.system('sudo ' + lampp + ' stop')
    else:
        parser.print_help()

# Launches main() Function
if __name__ == '__main__':
    main()