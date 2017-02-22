#!/usr/bin/python
# imports

import os
import random
import sys
import time

import core.Core as core
import core.EnDecryption as EDCore

# checks if the modules are installed
try:
    import argparse
    from getpass import getpass
    from Crypto.Cipher import AES
    from Crypto.Hash import SHA256
except ImportError:
    print ImportError
    core.print_error("some modules not installed")


def main():
    # adds the arguments
    parser = argparse.ArgumentParser(
        description='Encryption and Decryption Tool created by Retr0')
    parser.add_argument('-i', metavar='<OPT>', dest="inputfile",
                        required=True, help='input file (must be in the same directory)')

    parser.add_argument('-o', metavar='<OPT>', dest="outputfile", default="Lcrpt_output",
                        required=True, help='output file (must be in the same directory)')

    parser.add_argument('-encryption',
                        action='store_true',
                        help='encryption')
    parser.add_argument('-decryption',
                        action='store_true',
                        help='decryption')
    args = parser.parse_args()

    # puts the arguments in their own variables
    inputFiles = args.inputfile
    outputFiles = args.outputfile
    # if encryption is picked
    if args.encryption and not args.decryption:
        # asks for password /hidden
        keyCode = getpass("KeyCode: ")
        EDCore.encrypt(EDCore.getKey(keyCode), inputFiles, outputFiles)
        os.remove(inputFiles)

    # if decryption is picked
    elif args.decryption and not args.encryption:
        # asks for password /hidden
        keyCode = getpass("KeyCode: ")
        EDCore.decrypt(EDCore.getKey(keyCode), inputFiles, outputFiles)

    # errors
    elif not args.encryption and not args.decryption:
        core.print_error(
            "choose from encryption or decryption")
        parser.print_help()
    else:
        core.print_error(
            "Cant have both encryption and decryption")

if __name__ == '__main__':
    main()
