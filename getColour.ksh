#!/bin/bash

#ralColoursLeft has been shuffled (shuf infile > outfile) so just get the first line then delete it

line=`head -n 1 ralColoursLeft`
echo $line

#del first line
#sed -i '1d' ralColoursLeft

#get RGB
rgb= echo $line | sed 's/.*#//g'
echo $rgb

#replace # with newline

card= echo $line | sed 's/#/\n/g'
echo $card
