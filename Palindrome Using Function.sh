
is_palindrome(){
local s="$1"
local reversed=""
local length=${#s}
for (( i=$length-1; i>=0; i-- )); do
reversed="$reversed${s:$i:1}"
done 
if (("$s" == "$reversed")); then
echo "Palindrome"
else
echo "Not a palindrome"
fi
}
read s
is_palindrome "$s"

