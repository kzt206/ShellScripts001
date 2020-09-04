#!/bin/bash

#echo 'test'

channel=57e3
number=158.40

NAME=win
NAME_AFTER=txt

for infile in *.win
do
    echo $infile
    outfile=`echo $infile | sed "s/.win/.txt/;s/^2020/$channel\_2020/"` 
    echo $outfile
    dewin -j $channel $infile > $outfile

    outfile2=`echo $outfile | sed "s/.txt/_2.txt/"`
    cat $outfile  | awk -v num="$number" '{print $1,$2,$3, $3*1.023e-07/(num*10**(0/20))}' > test/$outfile2
    #outfile3=`echo $outfile2 | sed "s/_2.txt/_2b.txt/"`
    #cat test/$outfile2 | awk '{print $4}' > test2/$outfile2

    
done


# n.oozh Ozu ehmh11
#57e3  1  0  N.OOZH  U     6   27   158.40  m/s     0.97  0.70  0  1.023e-07  33.5807 132.6011   108  0  0  Ozu
#57e4  1  0  N.OOZH  N     6   27   170.80  m/s     1.00  0.70  0  1.023e-07  33.5807 132.6011   108  0  0  Ozu
#57e5  1  0  N.OOZH  E     6   27   172.60  m/s     1.02  0.70  0  1.023e-07  33.5807 132.6011   108  0  0  Ozu
## number=158.40   # oozu u 57e3
## print n*0.01, $1*1.023e-07/($number*10**(0/20))
