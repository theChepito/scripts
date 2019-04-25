 #!/usr/bin/env bash
 ####### Script Created Automatically #######

# BE CAREFUL WITH THIS!!

rm -r /hotFolder

mkdir ./hotFolder

for i in $(find . -type d);

do

if [ "$i" != "./hotFolder " ]; then

  echo " ************ FOLDER $i ************ "
  for myfile in $i/* ;
  do
    if [ -f "$myfile" ]; then
      echo "the file inside is: $myfile"
      check=$(grep -ni "prime" "$myfile")
        if [ -z "$check" ]; then
          echo "EMPTY"
        else
          echo "HOT FILE!! FOUND!"

          name_f=$(basename $myfile)
          cp "$myfile" ./hotFolder/"$name_f"
          echo " " >> hotFolder/"$name_f"
          echo "*****" >> hotFolder/"$name_f"
          echo "$check" >> hotFolder/"$name_f"
        fi
    fi
  done
  echo "_____________________________"
  echo " "
fi
done
