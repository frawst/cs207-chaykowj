#!/bin/bash
# This script will move a folder from user provided location A to B.
#
# Designed to handle git repo's, but will handle any standard folder. This will
# not be able to move window's files or other administrator protected files,
# but may be run with elevated permissions (ADMIN MODE) to increase it's rights.
# -- This will not harm your computer --

if [ "$1" = "-c" ]; then

  echo "LOGGING: Creating destination directory $3"
  mkdir -p "$3"
  echo "LOGGING: Copying files from $2 to $3"
  cp -r "$2/." "$3"
  echo "LOGGING: Removing git links from $2"
  rm -rf "$2/.git"
  
elif [ "$1" = "-m" ]; then
  
  echo "LOGGING: Creating destination directory $3"
  mkdir -p "$3"
  echo "LOGGING: Copying files from $2 to $3"
  cp -r "$2/." "$3"
  echo "Removing git links from $2"
  rm -rf "$2/.git"
  echo "LOGGING: Deleting $2"
  rm -rf "$2"
  #TODO: ^ Change the cp to a mv, just need to test it for functionality.
  
 

elif [ "$1" = "-h" ] || [ "$1" = "--help" ] || [ "$1" = "-help" ] || [ "$1" = "--h" ]; then

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
  
else
  echo " "
  echo " "
  echo "Error. Please try 'moveit.bash -h' or 'moveit.bash --help'"
  echo " "
  echo " "
  
  sleep 2
  exit 1
  
fi

echo " "
echo "DONE."
sleep 2