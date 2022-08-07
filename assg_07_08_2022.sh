#!/bin/bash

# Running whoami
echo "Result of 'whoami' -"
whoami
echo $'\n'

# Running user
echo "Users on this PC -"
users
echo $'\n'

# Running who
echo "Result of 'who'"
who
echo $'\n'

# Running w
# It shows active user(s) with their stats
echo "Result of 'w' -"
w
echo $'\n'

# Creating a directory to do all things
echo "Creating a directory 'assg' and moving to it"
mkdir assg
cd assg

# Running pwd
echo "Result of 'pwd' -"
pwd
echo $'\n'

# Creating some files
i=0
while [ $i -lt 5 ]
do
    file="file"
    file="$file$i.txt"
    touch $file
    echo "Created $file"
    i=`expr $i + 1`
done
echo $'\n'

# Now listing files using the ls command
echo "Result of ls -"
ls
echo $'\n'

# Listing all files with all details
# like permission, number of memory blocks etc.
echo "Result of 'ls -l' -"
ls -l
echo $'\n'

# Using ls with meta characters -
echo "Result of ls fil*.t*"
ls fil*.t*

echo "Result of ls fi?4.t*"
ls fi?e4.t*

echo $'\n'

# Displaying all files including the hidden ones
echo "Result of 'ls -a' -"
ls -a
echo $'\n'

# Displaying files in the subdirectory
echo "Result of 'ls -R' is -"
ls -R ../assg
echo $'\n'

# Writing something in files
echo "Written in file 0" > file0.txt
echo "Written in file 1" > file1.txt
echo "Written in file 2" > file2.txt
echo "Written in file 3" > file3.txt
echo "Written in file 4" > file4.txt

# Using cat command to display contents of file
i=0
while [ $i -lt 5 ]
do
    file="file"
    file="$file$i.txt"
    echo "Contents of $file - "
    cat $file
    i=`expr $i + 1`
done
echo $'\n'
# Doing same thing, but with -b so that it shows the line number
i=0
while [ $i -lt 5 ]
do
    file="file"
    file="$file$i.txt"
    echo "Contents of $file - "
    cat -b $file
    i=`expr $i + 1`
done
echo $'\n'

# Finding count of number of lines, words, characters in ecch file
i=0
while [ $i -lt 5 ]
do
    file="file"
    file="$file$i.txt"
    echo "Details of $file - "
    wc $file
    i=`expr $i + 1`
done
echo $'\n'

# Copying file0 to the same folder with name file5
cp file0.txt file5.txt
echo "Made a copy of file0 with name file5"
echo $'\n'

# Renaming file5 to file_new
mv file5.txt file_new.txt
echo "file5 is renamed to file_new"
echo $'\n'

# Removing file_new
rm file_new.txt
echo "file_new have been removed"
echo $'\n'

# Going to parent directory
cd ..

# Removing this assg directory
rm -rf assg
echo "'assg' have been deleted"
echo $'\n'