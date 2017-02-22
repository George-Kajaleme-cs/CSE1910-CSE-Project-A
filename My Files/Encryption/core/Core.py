import os
import random
import sys
import time
from sys import platform


#
# checks what os the user is on
#


def check_os():
    if os.name == "nt":
        operating_system = "windows"
    if os.name == "posix":
        operating_system = "posix"
    return operating_system

#
# adds colors when the user is on the right os
#
if check_os() == "posix":
    class bcolors:
        PURPLE = '\033[95m'
        CYAN = '\033[96m'
        DARKCYAN = '\033[36m'
        BLUE = '\033[94m'
        GREEN = '\033[92m'
        YELLOW = '\033[93m'
        RED = '\033[91m'
        BOLD = '\033[1m'
        UNDERL = '\033[4m'
        ENDC = '\033[0m'
        backBlack = '\033[40m'
        backRed = '\033[41m'
        backGreen = '\033[42m'
        backYellow = '\033[43m'
        backBlue = '\033[44m'
        backMagenta = '\033[45m'
        backCyan = '\033[46m'
        backWhite = '\033[47m'

        def disable(self):
            self.PURPLE = ''
            self.CYAN = ''
            self.BLUE = ''
            self.GREEN = ''
            self.YELLOW = ''
            self.RED = ''
            self.ENDC = ''
            self.BOLD = ''
            self.UNDERL = ''
            self.backBlack = ''
            self.backRed = ''
            self.backGreen = ''
            self.backYellow = ''
            self.backBlue = ''
            self.backMagenta = ''
            self.backCyan = ''
            self.backWhite = ''
            self.DARKCYAN = ''

# if we are windows or something like that then define colors as nothing
else:
    class bcolors:
        PURPLE = ''
        CYAN = ''
        DARKCYAN = ''
        BLUE = ''
        GREEN = ''
        YELLOW = ''
        RED = ''
        BOLD = ''
        UNDERL = ''
        ENDC = ''
        backBlack = ''
        backRed = ''
        backGreen = ''
        backYellow = ''
        backBlue = ''
        backMagenta = ''
        backCyan = ''
        backWhite = ''

        def disable(self):
            self.PURPLE = ''
            self.CYAN = ''
            self.BLUE = ''
            self.GREEN = ''
            self.YELLOW = ''
            self.RED = ''
            self.ENDC = ''
            self.BOLD = ''
            self.UNDERL = ''
            self.backBlack = ''
            self.backRed = ''
            self.backGreen = ''
            self.backYellow = ''
            self.backBlue = ''
            self.backMagenta = ''
            self.backCyan = ''
            self.backWhite = ''
            self.DARKCYAN = ''

#
# a function to clear the screen
#


def clear():
    os.system('cls' if os.name == 'nt' else 'clear')


# banner
# def banner():
#     banner = random.randint(1, 10)
#     if banner == 1:
#         print(bcolors.PURPLE + """
#  /$$                                       /$$
# | $$                                      | $$
# | $$        /$$$$$$$  /$$$$$$   /$$$$$$  /$$$$$$
# | $$       /$$_____/ /$$__  $$ /$$__  $$|_  $$_/
# | $$      | $$      | $$  \__/| $$  \ $$  | $$
# | $$      | $$      | $$      | $$  | $$  | $$ /$$
# | $$$$$$$$|  $$$$$$$| $$      | $$$$$$$/  |  $$$$/
# |________/ \_______/|__/      | $$____/    \___/
#                               | $$
#                               | $$
#                               |__/                """ + bcolors.ENDC)
#     elif banner == 2:
#         print(bcolors.CYAN + """
#   _                     _
#  | |                   | |
#  | |     ___ _ __ _ __ | |_
#  | |    / __| '__| '_ \| __|
#  | |___| (__| |  | |_) | |_
#  |______\___|_|  | .__/ \__|
#                  | |
#                  |_|        """ + bcolors.ENDC)
#     elif banner == 3:
#         print(bcolors.DARKCYAN + """
# .------..------..------..------..------.
# |L.--. ||C.--. ||R.--. ||P.--. ||T.--. |
# | :/\: || :/\: || :(): || :/\: || :/\: |
# | (__) || :\/: || ()() || (__) || (__) |
# | '--'L|| '--'C|| '--'R|| '--'P|| '--'T|
# `------'`------'`------'`------'`------'""" + bcolors.ENDC)
#     elif banner == 4:
#         print(bcolors.BLUE + "LC3P7" + bcolors.ENDC)
#     elif banner == 5:
#         print(bcolors.GREEN + """
#  _        __  ____   ____  ______
# | |      /  ]|    \ |    \|      |
# | |     /  / |  D  )|  o  )      |
# | |___ /  /  |    / |   _/|_|  |_|
# |     /   \_ |    \ |  |    |  |
# |     \     ||  .  \|  |    |  |
# |_____|\____||__|\_||__|    |__|
#                                   """ + bcolors.ENDC)
#     elif banner == 6:
#         print(bcolors.YELLOW + """
#             _..._
# .---.    .-'_..._''.
# |   |  .' .'      '.\      _________   _...._
# |   | / .'                 \        |.'      '-.
# |   |. '             .-,.--.\        .'```'.    '.     .|
# |   || |             |  .-. |\      |       \     \  .' |_
# |   || |             | |  | | |     |        |    |.'     |
# |   |. '             | |  | | |      \      /    .'--.  .-'
# |   | \ '.          .| |  '-  |     |\`'-.-'   .'    |  |
# |   |  '. `._____.-'/| |      |     | '-....-'`      |  |
# '---'    `-.______ / | |     .'     '.               |  '.'
#                   `  |_|   '-----------'             |   /
#                                                      `'-'   """ + bcolors.ENDC)
#     elif banner == 7:
#         print(bcolors.RED + """
#  _                     _
# | |                   | |
# | |     ___ _ __ _ __ | |_
# | |    / __| '__| '_ \| __|
# | |___| (__| |  | |_) | |_
# \_____/\___|_|  | .__/ \__|
#                 | |
#                 |_|        """ + bcolors.ENDC)
#     elif banner == 8:
#         print(bcolors.backRed + "Lc3pt" + bcolors.ENDC)
#     elif banner == 9:
#         print(bcolors.backBlue + """
# .____                        __
# |    |    __________________/  |_
# |    |  _/ ___\_  __ \____ \   __\:
# |    |__\  \___|  | \/  |_> >  |
# |_______ \___  >__|  |   __/|__|
#         \/   \/      |__|         """ + bcolors.ENDC)
#     elif banner == 10:
#         print(bcolors.backGreen + "Lcrypt" + bcolors.ENDC)


def print_status(message):
    print(bcolors.GREEN + bcolors.BOLD + "[*] " + bcolors.ENDC + str(message))


def print_info(message):
    print(bcolors.BLUE + bcolors.BOLD + "[-] " + bcolors.ENDC + str(message))


def print_info_spaces(message):
    print(bcolors.BLUE + bcolors.BOLD + "  [-] " + bcolors.ENDC + str(message))


def print_warning(message):
    print(bcolors.YELLOW + bcolors.BOLD + "[!] " + bcolors.ENDC + str(message))


def print_error(message):
    print(bcolors.RED + bcolors.BOLD +
          "[!] " + bcolors.ENDC + bcolors.RED + str(message) + bcolors.ENDC)
