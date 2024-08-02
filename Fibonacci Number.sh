read -p "Input a number : " n
f1=0
f2=1
echo -n "$f1 $f2 "
for((i=2;i<n;i++))
do
fibo=$((f1+f2))
echo -n "$fibo"
f1=$f2
f2=$fibo
echo -n " "
done
echo ""
