 #!/usr/bin/env bash
 ####### Script Created Automatically #######
echo ""
echo "Hello $USER! I can help you count specific file types in $PWD"
sleep 3.0
echo ""
echo "Which file type would you like to search for?"
sleep 2,0
echo ""
echo "Please select .txt, .doc, .pdf etc."
sleep 1.0
read -p "Enter the type of file here: " type
sleep .5
echo ""

number=0
for item in ./*$type

do

    number=$(( number +1 ))

done

echo "The number of $type files in $PWD is: $number"

#read -p "Press enter if you want to open all $type files"
echo ""

#echo "Your input was $input"

# if [ -z "$input" ]; then
#   open *$type
#
# else
#   echo "You did not press enter!"

#fi
