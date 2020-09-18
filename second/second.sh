#!/bin/bash
exec 1>result.txt
for filename in *
do
if [ $(stat -c %a "$filename") == "755" ]
then
echo "$filename; "
fi
done