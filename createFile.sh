#! /bin/bash

touch 1.txt 2.txt

ls -la >> 1.txt

read -p " What prefix should 1.txt have? " pref

mv 1.txt ${pref}1.txt

echo "Done"
