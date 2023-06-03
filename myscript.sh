


# create .sh file in /home/ec2-user directory with touch command

#Next edit .sh file with  nano myscript.sh
#copy and paste code below into .sh file, save and go back into /home/ec2-user directory
#excute .sh file - bash myscript.sh
#after execution of file, there should be a newly created directory which has a .sh file inside it. 
# Use ls command and cd into directory to see contents




#code bellow will create directory and file.
# Write data into files
#manipulate permissions and verify directory and file creation





echo "Current directory"

pwd # Print the working directory

echo "LIST ALL DIR AND FILES"\n\n""

ls # List all directories and files

directory="mydirectory"

# Check if the directory already exists
if [ -d "$directory" ];
then
    echo " The Directory '$directory' already exists."
else
    # Create the directory
    mkdir "$directory"
    echo "Directory '$directory' created."
fi # end of condtional statement

cd $directory # Change into the "mydirectory" directory

file="script.sh"
#check if file exist

if [ -f "$file" ];
then
    echo  "The File '$file' already exists."
else
    touch script.sh # Create the "script.sh" file
    echo "File '$file' created."
fi #end condition

echo "Show working directoty"

pwd


echo "show files and directories in the $directory that was just created"

dir # Show the directories and files in the current folder (optional command, not necessary)


fileData="script.sh" # Update the file variable to "script.sh" (no need for the full path)

echo '
# Define the numbers
numbers=(1 2 3 4 5 6)

# Initialize sum variable
sum=0

# Iterate over the numbers and calculate the sum
for num in "${numbers[@]}";
do
    sum=$((sum + num))
done

# Print the sum
echo "The sum of numbers is: $sum"
' > "$fileData" # Use single quotes around the script content to preserve the newlines

echo "show contents of the data in $fileData with cat command"

cat $fileData

echo "current directory"

pwd

echo "test if file exists in this dierectory: $directory"

# returns an exit status of 0 (true) or 1 (false) 
if [ -e $fileData ]; then
    echo "File exists"
else
    echo "File does not exist"
fi #end condition

# show file permission for file

ls $fileData -l

#remove write permission for everyone
chmod 440 $fileData

echo "After removing write permission, we wont be able to write to file"
ls $fileData -l

#verify by using nano 

nano $fileData

echo "now i add the write permision back"

chmod 666 $fileData
ls $fileData -l

nano $fileData

#Grant write access to users who are allowed


#change user/owner of file

#create new users and assign new groups to each uears if needed


#Create usernames and passwords for each user



# Assign permission to users o access the fileData file




#Show that only these users can access that file




























