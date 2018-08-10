read text
text=`echo $text|tr -c -d [:alpha:]`
r_text=`echo $text|rev`
if [ $text = $r_text ];then
    echo Is palindrome
else
    echo Is not palindrome
fi
