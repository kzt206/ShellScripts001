BEGIN{
n=0
}


{

print n*0.01, $1*1.023e-07/(170.00*10**(0/20))

n++

}
