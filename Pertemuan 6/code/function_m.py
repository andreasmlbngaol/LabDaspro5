from os import system


def area(length, width):
    return length * width



def show(area):
    print("Luas = " + str(area))


def clear():
    system("cls")






# main program

clear()
panjang = 4
lebar = 5
luas = area(4, 5)
show(luas)