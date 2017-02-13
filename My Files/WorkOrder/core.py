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
def banner():
    print("BETA V1.0 | will be adding more stuff soon")
    bann_menu = random.randint(1, 5)
    if bann_menu == 1:

        print(bcolors.BLUE + """
     _       ______  ____  __ __    ____  ____  ____  ___________.
    | |     / / __ \/ __ \/ //_/   / __ \/ __ \/ __ \/ ____/ __ \.
    | | /| / / / / / /_/ / ,<     / / / / /_/ / / / / __/ / /_/ /.
    | |/ |/ / /_/ / _, _/ /| |   / /_/ / _, _/ /_/ / /___/ _, _/ .
    |__/|__/\____/_/ |_/_/ |_|   \____/_/ |_/_____/_____/_/ |_|  .


        """ + bcolors.ENDC)

        print("\n")
    if bann_menu == 2:

        print(bcolors.YELLOW + """
     _       ______  ____  __ __    ____  ____  ____  ___________.
    | |     / / __ \/ __ \/ //_/   / __ \/ __ \/ __ \/ ____/ __ \.
    | | /| / / / / / /_/ / ,<     / / / / /_/ / / / / __/ / /_/ /.
    | |/ |/ / /_/ / _, _/ /| |   / /_/ / _, _/ /_/ / /___/ _, _/ .
    |__/|__/\____/_/ |_/_/ |_|   \____/_/ |_/_____/_____/_/ |_|  .


        """ + bcolors.ENDC)

        print("\n")
    if bann_menu == 3:

        print(bcolors.RED + """
     _       ______  ____  __ __    ____  ____  ____  ___________.
    | |     / / __ \/ __ \/ //_/   / __ \/ __ \/ __ \/ ____/ __ \.
    | | /| / / / / / /_/ / ,<     / / / / /_/ / / / / __/ / /_/ /.
    | |/ |/ / /_/ / _, _/ /| |   / /_/ / _, _/ /_/ / /___/ _, _/ .
    |__/|__/\____/_/ |_/_/ |_|   \____/_/ |_/_____/_____/_/ |_|  .


        """ + bcolors.ENDC)

        print("\n")
    if bann_menu == 4:

        print(bcolors.PURPLE + """
     _       ______  ____  __ __    ____  ____  ____  ___________.
    | |     / / __ \/ __ \/ //_/   / __ \/ __ \/ __ \/ ____/ __ \.
    | | /| / / / / / /_/ / ,<     / / / / /_/ / / / / __/ / /_/ /.
    | |/ |/ / /_/ / _, _/ /| |   / /_/ / _, _/ /_/ / /___/ _, _/ .
    |__/|__/\____/_/ |_/_/ |_|   \____/_/ |_/_____/_____/_/ |_|  .


        """ + bcolors.ENDC)

        print("\n")
    if bann_menu == 5:

        print(bcolors.CYAN + """
     _       ______  ____  __ __    ____  ____  ____  ___________.
    | |     / / __ \/ __ \/ //_/   / __ \/ __ \/ __ \/ ____/ __ \.
    | | /| / / / / / /_/ / ,<     / / / / /_/ / / / / __/ / /_/ /.
    | |/ |/ / /_/ / _, _/ /| |   / /_/ / _, _/ /_/ / /___/ _, _/ .
    |__/|__/\____/_/ |_/_/ |_|   \____/_/ |_/_____/_____/_/ |_|  .


        """ + bcolors.ENDC)

        print("\n")


"""List menu old"""
# def listMenu(menu, item, options):
#     # print("Category      ALSLSSLSLSLSLSLSLSLS)
#
#     print("%s                     %s" % (item, options))
#     line(42)
#     print("\n")
#     for i in range(len(menu)):
#         print("%s) %s" % (i + 1, menu[i]))
#
#     print("\n99) Exit")
#     print("\nPlease select from the menu [1-%s]" % (i + 1))


def listMenu(heading1, heading2, list1, list2):
    fmt = '{:<8}{:<20}{}'

    print(fmt.format('', heading1, heading2))
    for i, (item, lists) in enumerate(zip(list1, list2)):
        print(fmt.format(i + 1, item, lists))
    print(fmt.format("\n99", "Exit", "leave the program"))
