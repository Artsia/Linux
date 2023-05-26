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
fi

echo "Show the directories and files"

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

dir

bash script.sh

