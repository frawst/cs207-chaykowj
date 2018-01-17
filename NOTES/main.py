"""
This code will manage all individual NOTES files for reading, parsing,
and exporting to document types.
"""

import c1notes, c2notes

PARSEF = 0

def print_note(notes):
    print(notes)
    
def parse_for_keywords(notes):
    for char in notes:
        if (char == '*'):
            # Mark a start
            # Ensure the set starts with TWO markers
            # Find the end
            # Save the locations
            # Change PARSEF to Parse AFTER this string position
            pass
    
    print('return')
    
def parse_for_headers(notes):
    for char in notes:
        if (char == '#'):
            # Mark a starts
            # Ensure the set starts with TWO markers
            # Find the end
            # Save the locations
            # Change PARSEF to Parse AFTER this string position
            pass
            
    print('return')

print(c1notes.NOTES)

print(c2notes.NOTES)

print('DONE')