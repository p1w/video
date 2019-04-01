#!/bin/bash

#ralColoursLeft has been shuffled (shuf infile > outfile) so just get the first line then delete it

line=`head -n 1 ralColoursLeft`
echo $line
