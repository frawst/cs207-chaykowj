# MVGIT

Github repository folder mover and copier.

## THIS IS A WIP, USE AT OWN RISK.

## Function

Running this script in a *NIX environment with certain arguments will move or
copy a particular folder to another location, and will create the destination
if it does not already exist. It will also remove any git links in the
original file location and reassociate the new folder with git for easy
movement of git repository locations on the local hard disk.

## Usage

machine@DESKTOP ~/etc/mvgit

$ ./move-it.bash -h

$ ./move-it.bash -c "folder/old" "folder/new"

$ ./move-it.bash -m "folder/old" "folder/new"

------------------------------------------------
$ ./move-it.bash -arg "DIR_FROM" "DIR_TO"

**-h, --help**   This help output.

**-c**           Copy. Leaves original folder intact, but removes .git link

**-m**           Move. Also deletes the original folder.

**DIR_FROM**     Directory to copy or move.

**DIR_TO**       Destination directory.
 
