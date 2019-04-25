 #!/usr/bin/env bash
 ####### Script Created Automatically #######

for i in {1..4}; do
    touch "${i}file.txt"

done

for i in {1..4}; do
    touch "my${i}pic.jpg"

done

echo "Creating files..."
sleep 3.0
echo "Still working..."
sleep 1.0
echo ""
ls -l
echo ""

while [ "$choice" != "t" -a "$choice" != "j" ];
do
  echo "To rename .jpg file press j"
  echo "To rename .txt file press t"
  echo "enter selection below: "
  read choice
  echo "You typed $choice"

done

read -p "Write prefix to add to these files " pref
echo "The prefix is $pref "

if [ "$choice" == "t" ]; then
  for element in *.txt
    do
      echo " txt files are: ${element}"
      mv ${element} ${pref}${element}
    done
else
  for element in *.jpg
    do
      echo " jpg files are: ${element}"
      mv ${element} ${pref}${element}
  done
fi
