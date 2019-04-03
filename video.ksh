#!/bin/bash

#ralColoursLeft has been shuffled (shuf infile > outfile) so just get the first line then delete it

line=`head -n 1 testCol #ralColoursLeft`


#del first line
sed -i '1d' testCol #ralColoursLeft

#get RGB
rgb=$(sed 's/.*#//g' <<< $line)


rgbColour="rgb($rgb)"

#replace # with newline

#card=$(sed 's/#/\n/g' <<< $line)


card=${line//#/\\n}  #bash substition works but stupid bash handling of new line prints \n


convert -size 1000x1000 xc:"$rgbColour" -gravity center -weight 700 -pointsize 48 -annotate 0 "$card" card.jpg


#create video from card.jpg

#TODO change scaling, video format?
ffmpeg -y -loop 1 -i card.jpg -c:v libx264 -t 5 -pix_fmt yuv420p -vf scale=320:240 out.mp4
