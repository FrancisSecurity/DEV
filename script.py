#!/usr/bin/python3

import ast
import codecs


#string = ["b5","f5","40","00","31","06","ff","0b","25","3b","ae","e1","c0","a8","00","0a","23","82" ]#,"8f","48","00","00","00","00","04","81","18","d0","50","14","00","00","4a","e6","00","00","00","00","00","00","00","00"]
string = ["4a","25","32","35","31","33","34","35","6b","39"]
for vai in string:
    #s = ast.literal_eval('\x{}'.format(vai))
    s = bytes.fromhex(vai).decode('utf-8')
    
    print(s)
