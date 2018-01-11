#!/bin/bash
# This script will move a folder from user provided location A to B.
#
# Designed to handle git repo's, but will handle any standard folder. This will
# not be able to move window's files or other administrator protected files,
# but may be run with elevated permissions (ADMIN MODE) to increase it's rights.
# -- This will not harm your computer --

# Check first command argument was -copy
if [ "$1" = "-c" ]; then

  echo "LOGGING: Creating destination directory $3"
  mkdir -p "$3"  # Create the destination directory if it doesn't exist
  echo "LOGGING: Copying files from $2 to $3"
  cp -r "$2/." "$3"  # Copy contents from old/dir to dest/dir
  echo "LOGGING: Removing git links from $2"
  rm -rf "$2/.git"  # Delete git references from old/dir if they exist
  
# Check if first command argument was -move
elif [ "$1" = "-m" ]; then
  
  echo "LOGGING: Creating destination directory $3"
  mkdir -p "$3"  # Create destination directory if it doesn't exist
  echo "LOGGING: Copying files from $2 to $3"
  cp -r "$2/." "$3"  # Copy contents from old/dir to dest/dir
  echo "Removing git links from $2"
  rm -rf "$2/.git"  # Delete git references from old/dir if they exist
  echo "LOGGING: Deleting $2"
  rm -rf "$2"  # Delete old/dir entirely
  #TODO: ^ Change the cp to a mv, just need to test it for functionality.
  
 
# Check if first command argument was --help
elif [ "$1" = "-h" ] || [ "$1" = "--help" ] || [ "$1" = "-help" ] || [ "$1" = "--h" ]; then

  # Echo script help documentation to console and exit.
  echo "Usage: ./move-it.bash -h/c/m DIR_FROM DIR_TO"
  echo "Please ensure DIR_FROM and DIR_TO are encapsulated in quotation marks"
  echo "for most operations."
  echo " "
  echo "-h, --help   This help output."
  echo "-c           Copy. Leaves original folder intact, but removes .git link"
  echo "-m           Move. Also deletes the original folder."
  echo "DIR_FROM     Directory to copy or move."
  echo "DIR_TO       Destination directory."
  sleep 1
  exit 1

  
# An incorrect argument was given, or no argument was given. Inform user of
# error gently.
else
  echo " "
  echo " "
  echo "Error. Please try 'moveit.bash -h' or 'moveit.bash --help'"
  echo " "
  echo " "
  
  sleep 2
  exit 1
  
fi

# No 'exit 1' statement was reached, program ran some file operation and
# did not encounter an error, or that error was echo'ed to the user through
# the OS.console, exit with confirmation that script has completed.
echo " "
echo "DONE."
sleep 2