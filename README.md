# CS207 / CS 205 - Justyn Chaykowski

This repository contains codified class notes, and tools created with relevant
applications. Some examples include a localfile/git repo mover/copier (TODO: 
Add more good examples.) See below for brief descriptions of every
directory/project.

This repo will be shared publicly with those wanting to learn
and will include educational fragments and idea's that I find as I take my own
journey of learning that some might be able to follow in my footsteps for a bit
of direction as they learn with me! Do with this as you will!

Keep in mind that this repo is an imperfect use-case of git and you should refine
your management process according to your own use cases.

Everything within this repository is protected

       (c) 2017 Justyn Chaykowski under the MIT License.
	   
Work which does not belong under that copyright, or the MIT License for this
repository is credited in the containing folder's README.md.

If you are new to git and github, feel free to fork my repo and play around with
my branches / hierarchy, play with the tools, modify the tools, make pull requests
etc. to get a feel for git! See if you can use every single command in `git --help`!

## Contents

### ./
**Filetypes**: .txt, .md

Project library, all individual tools and projects are stored in their own
folder's - including class [NOTES/](NOTES/.).

### [PROCESSING/](PROCESSING/.)
**Filetypes**: Processing Sketches + Distributables

Contains every project completed and in progress using processing during
the duration of the semester which are not a part of class assignments.
Many code examples from my own experiementation, resources for learning,
functional code snippits, and anything else pertaining to Processing 
that I feel like making public.

See inside for more details.

**Includes DEMO for MORSE CODE CONVERTER**

### [file-parser-UA](file-parser-UA/.)
**Filetypes**: Python, .txt

Contains a list of all the PROCESSING and JAVA keywords to add custom keywords
or create a custom syntax in notepad++ for PROCESSING editing in notepad++.

A small python script used for one very particular use. This could serve as a
basis for a custom file parser script for future parsing needs. Who doesn't love
command line ops? See folder contents for more info

### [mvgit](mvgit/.)
**Filetypes**: bash (*NIX Systems or any BASH terminal on Windows)

MOVE OR COPY git repositories on local hard drive. Handle's the removal of .git 
files allowing for the safe and easy relocation of git repositories and most
other folders. This should prove useful!

### [CS207/](CS207/.)

All projects and misc. code created specifically for assignments in CS207.

### [CS205/](CS205/.)

All projects and misc. code created specifically for assignments in CS205.

### [NOTES/](NOTES/.)

All codified class notes.

### Files
--------------------------------------------------------------------------------
#### morse-code-alphanumeric-key.jpg

Translation of arabic alphabet, numerals 0-9, and basic punctuation to INTNL
Morse Code.

[source](https://www.artofmanliness.com/2008/10/09/morse-code/)

# Contributing

***Code Contributions***

Well, if you're going to modify my work try to follow PEP-8 or whatever the
standard format guide is for the language being submitted.

If you are not sure what style guide to follow, please follow [PEP-8](https://www.python.org/dev/peps/pep-0008/)
and keep [PEP-20](https://www.python.org/dev/peps/pep-0020/) in mind as you work.

***Resource Links and Files Contributions***

Feel free to add your own links in the appropriate folder's readme.md under the
***Other Resources*** heading, and any image/file resources in the appropriate
folder and make a pull request. Alternatively, you may simply wish to submit links
and file downloads (under 5mb) as a comment on the [External Links and Resources](https://github.com/frawst/cs207-chaykowj/issues/1)
 issue.

## Other Resources

https://www.openprocessing.org/ -- "Twitter" for Processing code and examples. Open Source!!

## Latest CLOC output for /cs207-chaykowj/

`commit 0fae2cf8ff814e7caa099a8c7f3c29d386302564` ( `0fae2cf` )
```
      14 text files.
      14 unique files.
      12 files ignored.

github.com/AlDanial/cloc v 1.74  T=0.50 s (22.0 files/s, 1032.0 lines/s)
--------------------------------------------------------------------------------
Language                      files          blank        comment           code
--------------------------------------------------------------------------------
Arduino Sketch                    3             39             37            136
Markdown                          5             56              0            101
Bourne Again Shell                1             12             16             41
Python                            2             16             43             19
--------------------------------------------------------------------------------
SUM:                             11            123             96            297
--------------------------------------------------------------------------------
```