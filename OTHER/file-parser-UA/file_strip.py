from time import sleep

"""
Open file to output to in 'w'rite mode
  Read editme.txt one line at a time using 'r'ead mode
    get position of the first 'TAB' character in line
    if there is no TAB character
      Log to console line is not being added to output
    else if a TAB character was found
      Write the read line to output from the start to where the first TAB is
    something else happens (This would be unexpected.)
      Log some message to user, this should really be a better ERROR message.
"""

with open('output.txt', 'w') as output:
    for line in open('editme.txt', 'r'):
            loc = line.find('\t')
            if (loc is 0) or (loc is -1):
                print('Blank-line')
            elif (loc is not -1) or (loc is not 0):
                output.write('%s\n' % line[0:loc])
            else:
                print('No entry found on line.')

print('done')  # No error occurred during operation, exit notification.
sleep(1)  # Wait 1 second before exiting script

