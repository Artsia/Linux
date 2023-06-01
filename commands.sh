pwd # working dir

# what is in the file below
file="./mydirectory/script.sh"
directory="./mydirectory"
cd $file

echo  "show lines"

ls -l # show lines


echo  "Redirected into '$file'"

ls -l 1> $file #output will be redirected into script.sh

cat 0 < $file # concatinate what is inside file redirect to stdout(output)

#for root user - sudo


#uptime -p 

ls -1  # show only directories and files, not the file that has been complied to run the script

ls  # show curr file, drirectories and otther files in main folder

gpasswd # gpasswd -M user1,user2 groupname - adding of multiple users to a group 