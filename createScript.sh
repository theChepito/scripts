#! /bin/bash

# prompt user to define script name, assign to variable
read -p "name of script to create: " name_s

# create script using user defined name
touch ${name_s}

# append content to script file
echo " #!/usr/bin/env bash" >> ${name_s}
echo " ####### Script Outline Created Automatically ####### " >> ${name_s}

# give file executable permissions
chmod +x ${name_s}

echo " BOOM! DONE "
