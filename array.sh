sum=0
for ((i = 0;  i < 10; i++))
do
    read var
    sum=$((sum+var))
    echo $var >> array.tmp
done
sum=$(echo "scale = 5;(($sum / 10))"|bc)
echo "Average of the array is $sum"
echo "max number is :"`sort -n  array.tmp |head -n1 `
echo "min number is :"`sort -rn  array.tmp |head -n1 `
sort -n array.tmp
#cat array.tmp
rm array.tmp
