import time

with open('output.txt', 'w') as output:
    for line in open('editme.txt', 'r'):
            loc = line.find('\t')
            if (loc is 0) or (loc is -1):
                print('Blank-line')
            elif (loc is not -1) or (loc is not 0):
                output.write('%s\n' % line[0:loc])
            else:
                print('No entry found on line.')

print('done')
time.sleep(1)

