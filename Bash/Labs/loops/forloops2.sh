#!/bin.bash

for file in logfiles/*.log
 # for file is setting the variable 
 # logfiles/*.log is searching any files end with .log in the logfiles directory.

do
   tar -csvf $file.tar.gz $file 
   # tar will be used for any files that is found against any files ending with .log
   

done

# this script will create a compress version of each log files
# this helps when you want to compress a large number of files to save space.
