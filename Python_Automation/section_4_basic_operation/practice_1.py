'''
Center/Right/Left the text according to the terminal (Linux, Windows)
'''

import os
colums=os.get_terminal_size().columns

value=input("Enter the value: ")
print(value.center(colums).title())
print(value.ljust(colums).title())
print(value.rjust(colums).title())