 #!/usr/bin/env bash
 ####### Script Created Automatically #######

#script that updates the database
#/usr/libexec/locate.updatedb

# prompt user for filename
echo ""
read -p "Please provide the /filepath/name to be cleaned " fileName

# loop through all files that match the name provided and list for user
#locate $filename
echo ""
echo "The /filepath/name you selected is: $fileName "


# prompt user for the specific content that needs removed
# this could be string, integer, or character


#if the content is present, remove it. When no content remains, save file and exit
# test content [K
# test content --More--
# test content Josephs-MacBook-Air:~ chepito$

if [ -e $fileName ]; then
  echo ""
  sleep 0.05
  echo "$fileName Exists!"
else
  echo "$fileName Does Not Exist"
  echo "Please check the filepath/name and try again"
  exit
fi

echo ""
read -p "Content to remove " content
echo "searching for specified content.."
sleep 1.0

echo ""
if [ $content == "[K" ]; then
  echo " content [K found!"
  echo "Done!"
else
  echo "No matches found..bye bye"
fi






#ambitious future updates:
# - incorporate regex functionality
# - find the filename anywhere on the network and return the list of possible choices
