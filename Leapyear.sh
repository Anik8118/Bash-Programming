read -p "Input a Year : " year
if ((year%400==0 || year%4==0 && year%100!=0))
then echo Leap Year
else echo Not Leap Year
fi
