 #!/usr/bin/env bash
 ####### Script Created Automatically #######

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
# read -p "You selected $myfile, is this correct? " correct
# echo ""
#
# if [ $correct == "no" | "n" ]; then
#  sleep .25
#  read -p "Give me the name of the file to check " myfile
#  echo ""
#
# else

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

    echo "bye bye"
#fi
