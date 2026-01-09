#!/bin/bash
# initial setting
echo "Mode select: (502 for gas or 501 for bluk and surface)"
read mode
echo "Finial magnetic moments: "
read mag

a=100 # initial temp [K]
b=2001 # final temp +1 [K]
c=100 # interval temp [K]

echo "Mode:$mode mag:$mag runing at intervals of $c K from $a K to $(expr $b - 1) K"

mag1=$(expr $mag + 1) # mag + 1

rm -rf tempdata
mkdir tempdata

while [ "$a" -lt $b ]
do
    echo -e "$mode\n$a\n1\n$mag1" | vaspkit > ./tempdata/w.txt
    echo Temperature = $a K >> ./tempdata/tempdata.out
    sed -n '/ZPE   :/p' ./tempdata/w.txt >> ./tempdata/tempdata.out
    sed -n '/U(T):/p' ./tempdata/w.txt >> ./tempdata/tempdata.out
    sed -n '/H(T):/p' ./tempdata/w.txt >> ./tempdata/tempdata.out
    sed -n '/G(T):/p' ./tempdata/w.txt >> ./tempdata/tempdata.out
    sed -n '/T*S  :/p' ./tempdata/w.txt >> ./tempdata/tempdata.out
    a=$(expr $a + $c)
done
rm ./tempdata/w.txt

grep "ZPE" ./tempdata/tempdata.out > ./tempdata/ZPE.out
grep "U(T)" ./tempdata/tempdata.out > ./tempdata/U.out
grep "H(T)" ./tempdata/tempdata.out > ./tempdata/H.out
grep "G(T)" ./tempdata/tempdata.out > ./tempdata/G.out
grep "T*S" ./tempdata/tempdata.out > ./tempdata/TS.out

echo "Finished! check the tempdata directory"
