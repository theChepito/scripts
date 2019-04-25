 #!/usr/bin/env bash
 ####### Script Outline Created Automatically #######

# return relative path of file
echo "File path:$0"

echo "************Calculator Script****************"

if [ "$1" == "-p" ]; then
  precision=$2
  shift 2
else
  precision=3
fi

bc << _EOF_
scale=$precision
$@
_EOF_
