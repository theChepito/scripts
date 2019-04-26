 #! /bin/bash
 ####### Script Outline Created Automatically #######

# specify the delimiter type
oldIFS="$IFS"
IFS=":";

# check if directory is present in PATH
if [ "$1" == "-d" ]; then
  my_dir="$2";
  for dir in $PATH;
  do
    if [ "$my_dir" == "$dir" -o "$my_dir" == "$dir/" ]; then
      echo "DIRECTORY present in PATH"
    fi
  done
fi


#check if command is present in PATH
if [ "$1"  == "-c" ]; then
  my_com="$2";
  for dir in $PATH;
  do
    if [ -e "$dir/$my_com" ]; then
      echo "***COMMAND present in PATH****"
      echo $dir/$my_com
    fi
  done
fi

# clean list of PATH
if [ "$1" == "" ]; then
  for dir in $PATH;
  do
    echo "$dir"
  done
fi
