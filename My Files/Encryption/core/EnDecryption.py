# imports
import getopt
import os
import random
import sys
import time
from getpass import getpass

from Crypto.Cipher import AES
from Crypto.Hash import SHA256

import core.Core as core


def encrypt(key, filename, outputFile):
    # sets variables
    chunksize = 64 * 1024
    filesize = str(os.path.getsize(filename)).zfill(16)
    IV = ''

    for i in range(16):
        IV += chr(random.randint(0, 0xFF))

    encryptor = AES.new(key, AES.MODE_CBC, IV)

    # opens file
    with open(filename, 'rb') as infile:
        with open(outputFile, 'wb') as outfile:
            outfile.write(filesize)
            outfile.write(IV)

            while True:
                chunk = infile.read(chunksize)

                if len(chunk) == 0:
                    break
                elif len(chunk) % 16 != 0:
                    chunk += ' ' * (16 - (len(chunk) % 16))
                outfile.write(encryptor.encrypt(chunk))

    core.print_status("Encryption Complete")


def decrypt(key, filename, outputFile):
    chunksize = 64 * 1024

    with open(filename, 'rb') as infile:
        try:
            filesize = long(infile.read(16))
        except ValueError:
            core.print_error("File already Decrypted")
            sys.exit()
        IV = infile.read(16)

        decryptor = AES.new(key, AES.MODE_CBC, IV)

        with open(outputFile, 'wb') as outfile:
            while True:
                chunk = infile.read(chunksize)
                if len(chunk) == 0:
                    break
                outfile.write(decryptor.decrypt(chunk))
            outfile.truncate(filesize)

    core.print_status("Decryption Complete")

    print core.bcolors.YELLOW + "\n---------- %s ----------" % (outputFile) + core.bcolors.ENDC
    # prints out the output
    with open(outputFile, 'r') as B:
        print B.read()[:1000]

    print core.bcolors.YELLOW + "---------- %s ----------\n" % (outputFile) + core.bcolors.ENDC

    # checks if the output is correct
    correct = raw_input("Is the output correct? [Y/N]: ")
    correct = correct.lower()
    if correct == 'y' or correct == "yes":
        os.remove(filename)
    elif correct == 'n' or correct == "no":
        os.remove(outputFile)
        main()


def getKey(password):
    hasher = SHA256.new(password)
    return hasher.digest()
