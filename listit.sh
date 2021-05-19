#!/bin/bash
#Nischal Mathabhik assesment

touch directories.list
ls -d */ > directories.list
sed -i "1 i\line one's line" directories.list
head -3 directories.list

echo -n "Enter a number: "
read num1
i=1
while [ $i -le 4 ]
do
  echo $num1
  i=$(( $i +1 ))
done
