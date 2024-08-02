#!/bin/bash
echo Input a Number :
read n
read x
read y
if [ $n -gt 100 ]
then echo $((x+y))
else echo $((x-y))
fi

#if (( n >100 ))
#then echo CENTURY
#else echo Getting There
#fi
