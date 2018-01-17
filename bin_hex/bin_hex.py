# HEX TO BIN

# TODO: Extend to encode chars in UTF-8
# TODO: Make this into a package of sorts, not so functional
# TODO: Include UTF-16 and other encodings?
# TODO: Add Math!

def htb(val):
    if val == 'A': return 1010
    elif val == 'B': return 1011
    elif val == 'C': return 1100
    elif val == 'D': return 1101
    elif val == 'E': return 1110
    elif val == 'F': return 1111
    elif val == '1': return 1
    elif val == '2': return 10
    elif val == '3': return 11
    elif val == '4': return 100
    elif val == '5': return 101
    elif val == '6': return 110
    elif val == '7': return 111
    elif val == '8': return 1000
    elif val == '9': return 1001
    else: return 0
    
def bth(val):
    if val == 1010: return 'A'
    elif val == 1011: return 'B'
    elif val == 1100: return 'C'
    elif val == 1101: return 'D'
    elif val == 1110: return 'E'
    elif val == 1111: return 'F'
    elif val == 1: return '1'
    elif val == 10: return '2'
    elif val == 11: return '3'
    elif val == 100: return '4'
    elif val == 101: return '5'
    elif val == 110: return '6'
    elif val == 111: return '7'
    elif val == 1000: return '8'
    elif val == 1001: return '9'
    else: return 0
   

convs = "00E9"
print("Converting {}".format(convs))
for chara in convs:
    print("{}: {}".format(chara ,htb(chara)))
    
print("DONE")
