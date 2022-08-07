#!/bin/bash
# Creating a direcotry using "mkdir"
mkdir dir
echo "Message: ----------> Directory named dir has been created"

# Moving to the newly created directory using the cd command
cd dir
echo "Message: ----------> Move to dir"

# Creating some files using the touch command and loop
i=0
while [ $i -lt 5 ]
do
    file="file"
    file="$file$i.txt"
    touch $file
    i=`expr $i + 1`
    echo "Message: ----------> $file has been created in dir"
done

# Listing all the direcotries created using the ls command
echo "Message: ----------> Files are"
ls -al


# Creating another directory named child
mkdir child
echo "Message: ----------> Child directory created"

# Moving some files from dir to child
mv file1.txt file2.txt child
echo "file1 and file2 have been moved to child"

# Moving to child
cd child
echo "Message: ----------> Moved to child"

# Printing files in child
echo "Files in child are"
ls -al

# Moving back to dir
cd ../
echo "Message: ----------> Moved back to dir"

# Compressing child
tar -czf child.tar.gz child
echo "Message: ----------> child have been compressed"

# Removing directory child
rm -r child

# Extracting child.gz
tar -xf child.tar.gz
echo "Message: ----------> child have been extracted"

# Moving to the base directory and deleting all the changes made
cd ../
rm -r dir
echo "All changes have been reverted and program exited successfully"