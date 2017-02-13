"""
WorkOrder
MADE BY    : Leandro Trinidad
Description: An application that lets users create workOrder forms
"""

import os
import random
import sys
import time
from sys import platform

from core import workCore as core
from core.menu import text


def generateTicket_menu():
    # defines variables
    menuPickTF = False
    menuPickTF2 = False

    # loops the menu so that when the user types incorrect
    # can fix itself
    while menuPickTF2 == False:
        while menuPickTF == False:

            # shows the banner and the list
            core.banner()
            core.listMenu("Item", "Options", text.generateTicket,
                          text.generateTicket2)

            # asks user to pick one from the list
            menu_pick = input("Work Order: ")

            # lowercase the input if its a string
            # if not makes it into a number
            try:
                menu_pick = int(menu_pick)
                print("\n%s\nInfo\n\n%s\n" % (text.generateTicket[
                      menu_pick - 1], text.generateTicket2[menu_pick - 1]))
                menuPickTF = True
            except ValueError:
                print(core.bcolors.RED +
                      "[!] Not a valid number" + core.bcolors.ENDC)
                time.sleep(1)

                core.clear()

        # When the user picks from 1 - 7
        # it makes them change the Options
        #
        if menu_pick >= 1 and menu_pick <= 15:
            text.generateTicket3[menu_pick -
                                 1] = input(text.generateTicket[menu_pick - 1])
            #
            # When the user doesnt type anything leavs as N/A
            #
            if text.generateTicket3[menu_pick -
                                    1] == "":
                print("Hello")
            else:
                text.generateTicket2[menu_pick - 1] = core.bcolors.GREEN + \
                    text.generateTicket3[menu_pick - 1] + core.bcolors.ENDC
            menuPickTF = False
            core.clear()

        elif menu_pick == 16:
            print("Generate")

        #
        # Exiting the the program
        #
        elif menu_pick == 99 or menu_pick == "exit":
            core.clear()
            print(core.bcolors.RED + "<WorkOrder> " +
                  core.bcolors.ENDC + "Goodbye")
            sys.exit()

        #
        # When the user types something incorrect
        #
        else:
            print(core.bcolors.YELLOW +
                  "[!] " + str(menu_pick) + " is not an option" + core.bcolors.ENDC)
            time.sleep(1)
            menuPickTF2 = False
            menuPickTF = False
            core.clear()


# clears the screen at the beggining of the program
core.clear()
generateTicket_menu()
