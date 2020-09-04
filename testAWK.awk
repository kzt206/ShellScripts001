BEGIN{
    ii=0
}


BEGINFILE{
    i=0
    sum=0
}


{
    ii+=1
    i+=1
    sum+=$4*$4
    #print $4
}

ENDFILE{
    print FILENAME
    time=substr(FILENAME,11,13)
    print time,i,sum,sum/i > "testOut.txt"
}
