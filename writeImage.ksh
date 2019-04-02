#!/bin/bash

#ralColoursLeft has been shuffled (shuf infile > outfile) so just get the first line then delete it

line=`head -n 1 ralColoursLeft`


#del first line
#sed -i '1d' ralColoursLeft

#get RGB
rgb= echo $line | sed 's/.*#//g'

#replace # with newline

#card=$(sed 's/#/\n/g' <<< $line)


card=${line//#/\\n}  #bash substition works but stupid bash handling of new line prints \n


echo "zz"
echo -e $card
convert -size 1000x1000 xc:"$rgb" -gravity center -weight 700 -pointsize 48 -annotate 0 "$card" c.jpg
