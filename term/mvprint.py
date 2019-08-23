#!/usr/bin/env python3

def mvprint(x, y, string):
    print("\033[" + str(x) + ";" + str(y) + "H" + string)

mvprint(6, 3, "Hello")
