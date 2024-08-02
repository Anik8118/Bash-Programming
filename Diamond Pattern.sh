read -p "Input number : " n
for ((i=1;i<=n;i++))
do
for ((j=1;j<=i;j++))
do
echo -n "*"
done
echo " "
done
for ((i=n;i>=1;i--))
do
for ((j=i;j>=1;j--))
do
echo -n "*"
done
echo " "
done
