#!/bin/bash

# Create the CompanyA directory
mkdir -p /home/ec2-user/CompanyA

# Create the Employees directory and Schedules.csv file
mkdir -p /home/ec2-user/CompanyA/Employees
touch /home/ec2-user/CompanyA/Employees/Schedules.csv

# Create the Finance directory and Salary.csv file
mkdir -p /home/ec2-user/CompanyA/Finance
touch /home/ec2-user/CompanyA/Finance/Salary.csv

# Create the HR directory and its files
mkdir -p /home/ec2-user/CompanyA/HR
touch /home/ec2-user/CompanyA/HR/Assessments.csv
touch /home/ec2-user/CompanyA/HR/Managers.csv

# Create the IA directory
mkdir -p /home/ec2-user/CompanyA/IA

# Create the Management directory and its files
mkdir -p /home/ec2-user/CompanyA/Management
touch /home/ec2-user/CompanyA/Management/Promotions.csv
touch /home/ec2-user/CompanyA/Management/Sections.csv

# Create the SharedFolders.csv file
touch /home/ec2-user/CompanyA/SharedFolders.csv


#backup "CompanyA" files to "backup.CompanyA.tar.gz" folder

tar -csvpzf backup.CompanyA.tar.gz CompanyA  


#verify archive creation

ls

#check backlogs to avoid unneccesary back logs

cd /home/ec2-user/CompanyA
touch SharedFolders/backups.csv

# content below will be added to the backups.csv file
#first we echo to the standard output content to be added to backups.csv file.
#|: The vertical bar, also known as a pipe, is used to redirect the standard output of the preceding command (echo) to become the standard input of the following command (sudo tee).
#The tee command is used to read from standard input and write to both standard output and files. In this case, it writes the standard input (the echoed string) to the file SharedFolders/backups.csv
#sudo is there to run elevetaed privileges
echo "25 Aug 25 2021, 16:59, backup.CompanyA.tar.gz" | sudo tee SharedFolders/backups.csv

#display SharedFolders/backups.csv file

cat SharedFolders/backups.csv

#OR

cd SharedFolders # change into SharedFolders directory
nano backups.csv #let you edit the file and see the contents of the file

#lets transfer backups to other teams

pwd # show directory am working in

#move back up folder one level up from current directory into other directory

#mv ../backup.CompanyA.tar.gz IA -MADE A MISTAKE AT THIS STEP AND backup.Companya.tar.gz wont appear in IA folder

#OR

cd .. # change from SharedFolder to ComapanyA folder

cd .. #this wwill move us back to home directory where backup.CompanyA.tar.gz is located

mv backup.CompanyA.tar.gz IA #move bakup to IA directory

#verify moving of folder
ls . IA    



















