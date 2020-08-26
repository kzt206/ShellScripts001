#!/bin/bash

pwd

# # n.askh Ashikita kmmh11
# 6ba3  1  0  N.ASKH  U     6   27   172.30  m/s     1.02  0.70  0  1.023e-07  32.2918 130.5777  -201  0  0  Ashikita
# 6ba4  1  0  N.ASKH  N     6   27   171.10  m/s     0.98  0.70  0  1.023e-07  32.2918 130.5777  -201  0  0  Ashikita
# 6ba5  1  0  N.ASKH  E     6   27   169.90  m/s     0.98  0.70  0  1.023e-07  32.2918 130.5777  -201  0  0  Ashikita
# # n.hyoh Hitoyoshi kmmh12
# 6bb3  1  0  N.HYOH  U     8   27   171.20  m/s     0.98  0.70  0  1.023e-07  32.2052 130.7370   -19  0  0  Hitoyoshi
# 6bb4  1  0  N.HYOH  N     8   27   195.00  m/s     1.02  0.70  0  1.023e-07  32.2052 130.7370   -19  0  0  Hitoyoshi
# 6bb5  1  0  N.HYOH  E     8   27   171.20  m/s     0.99  0.70  0  1.023e-07  32.2052 130.7370   -19  0  0  Hitoyoshi
# # n.uweh Ue kmmh13
# 6bc3  1  0  N.UWEH  U     6   27   178.10  m/s     1.00  0.70  0  1.023e-07  32.2209 130.9096    -3  0  0  Ue
# 6bc4  1  0  N.UWEH  N     6   27   174.80  m/s     0.99  0.70  0  1.023e-07  32.2209 130.9096    -3  0  0  Ue
# 6bc5  1  0  N.UWEH  E     6   27   170.80  m/s     0.96  0.70  0  1.023e-07  32.2209 130.9096    -3  0  0  Ue
# # n.oozh Ozu ehmh11
# 57e3  1  0  N.OOZH  U     6   27   158.40  m/s     0.97  0.70  0  1.023e-07  33.5807 132.6011   108  0  0  Ozu
# 57e4  1  0  N.OOZH  N     6   27   170.80  m/s     1.00  0.70  0  1.023e-07  33.5807 132.6011   108  0  0  Ozu
# 57e5  1  0  N.OOZH  E     6   27   172.60  m/s     1.02  0.70  0  1.023e-07  33.5807 132.6011   108  0  0  Ozu
# #


# for f in 20200704hinet/*.cnt 
# do
# #/home/ubuntu/WinSystem/win32tools/w32tow1.src/w32tow1 inputfile outputfile
# echo $f
# done

date=20200708
channel=57e3
filename="${channel}_${date}"
echo $channel
echo $filename

for f in hinet/*.win 
do
echo $f
dewin $channel -j $f >> $filename.txt
done

