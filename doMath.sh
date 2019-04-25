 #!/usr/bin/env bash
 ####### Script Created Automatically #######

number1=10
number2=20

echo "SUM: $(( number1 + number2 ))"
echo "PRODUCT: $(( number1 * number2 ))"
echo "DIVISION: $(( number1 / number2 ))"
echo "REMAINDER: $(( number1 % number2 ))"
echo "POWER: $(( number1 ** number2 ))"

echo "_______________________________________"
echo ""
echo "INCREASE A VARIABLE"

echo "Variable is $number1"
echo "Decrement variable $(( number1--))"
echo "Variable is now $number1"

echo "_______________________________________"
echo ""
echo "SHORT WAY OF OPERATING ON VARIABLE "

number1=10
number1=$(( number1+=3))
echo "Value = $number1"

echo "ADD 3: $(( number1+=3 ))"
echo "$number1"

echo "SUBTRACT 10: $(( number1-=10))"
echo "$number1"

echo "MULTIPLY BY 10: $(( number1*=10))"
echo "$number1"
