echo Input a number : 
read n
if ((n%2==0))
then echo Even $((n*2))
else echo Odd $((n*3))
fi
