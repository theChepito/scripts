#! /bin/bash

touch 1.txt 2.txt

ls -la >> 1.txt

echo "What prefix should 1.txt have"

read prefix

mv 1.txt 1$prefix
