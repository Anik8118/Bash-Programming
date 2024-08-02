is_prime(){
local n=$1
local c=0
if ((n==0 || n==1)); then
echo "Not a Prime Number"
break
else
for ((i=2;i<n;i++))
do
if ((n%i!=0)) ; then
c=1
break
fi
done
fi
if ((c==1)); then
echo "Not a Prime Number"
else echo "Prime Number"
fi
}
read -p "is_Prime" num
is_prime num
