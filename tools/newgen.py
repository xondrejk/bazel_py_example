#!/usr/bin/env python3

from __future__ import print_function
import sys

if sys.version_info.major < 3:
    raise(RuntimeError("Not talking to you"))

with open(sys.argv[1], 'w') as outfile:
    outfile.write('Hello!\n')
