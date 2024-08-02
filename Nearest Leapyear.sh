read -p "Input Year : " year
c1=0
c2=0
temp=$year
while((1))
do
if ((year%400==0 || year%4==0 && year%100!=0))
then 
fyear=$year
break
else 
((year++))
((c1++))
fi
done

while((1))
do
if ((year%400==0 || year%4==0 && year%100!=0))
then
byear=$year
break
else
((year--))
((c2--))
fi
done
if ((c1>c2))
then echo $byear
else echo $fyear
fi
