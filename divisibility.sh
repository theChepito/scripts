 #!/usr/bin/env bash
 ####### Script Created Automatically #######

# prompt user for number up to 97
echo ""
read -p "Choose a number between 0 and 97 " num
echo ""

# function evaluates user input against prime numbers
divisible() {
  local num=$1
  echo "You wrote: $num "

for i in {1,2,3,5,7,11,13,17,19,23,29,31,37,41,43,47,53,59,61,67,71,73,79,83,89,97}

do

# evaluate input against list of primes up to 97
    if [ $(( $num%$i )) -eq 0 ]; then
      echo "Your number $num is divisible by $i"
      sleep 0.05
    fi

done
echo ""
sleep .004
echo "done..."
sleep .004
echo "bye bye..."

}
# pass user defined number to function
divisible $num
