
#make EC2 instance and attach ebs volume
#worikng with aws snapshots


df -h
ls
pwd
ls
pwd
touch f.txt
nano f.txt
clear
sudo mkfs -t ext3 /dev/sdf
sudo mkdir /mnt/data-store
sudo mount /dev/sdf /mnt/data-store
echo "/dev/sdf   /mnt/data-store ext3 defaults,noatime 1 2" | sudo tee -a /etc/fstab
cat /etc/fstab
df -h
sudo sh -c "echo some text has been written > /mnt/data-store/file.txt"
cat /mnt/data-store/file.txt
ls
sudo rm /mnt/data-store/file.txt
sudo ls
pwd
ls /mnt/data-store/
sudo mkdir /mnt/data-store2
sudo mount /dev/sdg /mnt/data-store2
ls /mnt/data-store2/
nano file.txt
clear
history

