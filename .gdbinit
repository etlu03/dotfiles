set auto-load safe-path / # current directory initialization
set language auto # have GDB infer language

set disassembly-flavor intel # intel syntax assembly

set history save on # switch on command-line history
set history size 256 # sets command-line history to 256

set print array off # prints arrays in compressed form
set print array-indexes on # show indices
set print elements 200 # print up to 200 elements
set print repeats 1 # prints up to 1 consecutive element

set print null-stop on # prints up till the first NULL

set print address off # hide address values for pointers

set print frame-arguments all # show all frame arguments
set print entry-values both # show actual parameter value and its value from function entry point

set print pretty on # display values of classes, structs etc. nicely
set print union on # print unions which are contained in structures and other unions

set pagination off # set height limit to unlimited, and auto confirm

set logging enabled on # enable logging
set logging file gdb.txt # change name of logfile to `gdb.txt`
set logging redirect off # output to both command-line and logfile
set logging overwrite on # overwrite log file

set confirm off # auto confirms commands
