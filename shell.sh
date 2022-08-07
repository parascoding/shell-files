#!/bin/bash
# Creating a direcotry using "mkdir"
mkdir dir
echo "Directory named dir has been created"

# Moving to the newly created directory using the cd command
cd dir
echo "Move to dir"

# Creating some files using the touch command and loop
i=0
while [ $i -lt 5 ]
do
    file="file"
    file="$file$i.txt"
    touch $file
    i=`expr $i + 1`
    echo "$file has been created in dir"
done

# Listing all the direcotries created using the ls command
echo "File in $pwd are"
ls -al









# Moving to the base directory and deleting all the changes made
cd ../
rm -r dir
echo "All changes have been reverted and program exited successfully"