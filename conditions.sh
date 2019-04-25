 #!/usr/bin/env bash
 ####### Script Created Automatically #######

# using if/then logic
echo ""
read -p "How old are you? " age
echo ""
sleep 0.05

if [ $age -lt 0 -o $age -gt 200 ]; then
    echo "Number Not Acceptable!"
    sleep 0.05
fi

if [ $age -lt 64 -a $age -gt 26 ]; then
    echo "You are Between 26 and 64"
    sleep 0.05
fi

echo "Please validate file rights access"
sleep 0.05


# using validation logic

read -p "Type password to know the file name: " pass
if [ $pass == "Table1X" ]; then
    echo "Correct! The filename is : catfile.txt"
else
    echo "This is incorrect"
    echo ""
    #exit
fi

echo "Continue to file permissions"
echo ""
# return the current directory file names
echo "Here are all the files in the current directory"
echo ""
for i in ./*
do
    echo "Filename: $i "
    sleep 0.05
done

# validating if a file exists. Exits if not a file.
echo ""
sleep .5
read -p "Give me the name of the file to check " myfile
echo ""
read -p "You selected $myfile, is this correct? " correct
echo ""

if [ $correct == "no" ]; then
  sleep .25
  read -p "Give me the name of the file to check " myfile
  echo ""

else

    if [ -e $myfile ]; then
      echo "$myfile Exists"
    fi

    if [ ! -e $myfile ]; then
      echo "$myfile Does Not Exist"
      exit
    fi
    sleep 0.05

    # validating if a file is a directory

    if [ -d $myfile ]; then
      echo "$myfile Is a Directory"
    fi
    if [ ! -d $myfile ]; then
      echo "$myfile Is Not a Directory"
    fi
    sleep 0.05

    # validating if a file is empty

    if [ -s $myfile ]; then
      echo "$myfile Is Empty"
    fi

    if [ ! -s $myfile ]; then
      echo "$myfile Is Not Empty"
    fi
    sleep 0.05

    # validating if a file is a regular file

    if [ -f $myfile ]; then
      echo "$myfile Is a Regular File"
    fi

    if [ ! -f $myfile ]; then
      echo "$myfile Is Not a Regular File"
    fi
    sleep 0.05

    # validating if a file is a readable

    if [ -r $myfile ]; then
      echo "$myfile Is Readable"
    fi

    if [ ! -r $myfile ]; then
      echo "$myfile Is Not Readable"
    fi
    sleep 0.05

    # validating if a file is a writable

    if [ -w $myfile ]; then
      echo "$myfile Is Writable"
    fi

    if [ ! -w $myfile ]; then
      echo "$myfile Is Not Writable"
    fi
    sleep 0.05

    # validating if a file is a executable

    if [ -x $myfile ]; then
      echo "$myfile Is Executable"
    fi

    if [ ! -x $myfile ]; then
      echo "$myfile Is Not Executable"
    fi
    sleep 0.05

    # using a while loop

    echo ""
    read -p "Pick a number between 1 and 50 " num

    while [ $num -le 100 ];
    do
        echo "Number is: $num"
        num=$(( num + 2 ))
        sleep .005

    done
    echo ""
    echo "bye bye"
fi
