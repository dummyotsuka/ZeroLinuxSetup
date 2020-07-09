#!/bin/sh


gamen=`tty`
echo $gamen

rm -rf OK_cmd.log
rm -rf NG_cmd.log

exec 1>> OK_cmd.log
exec 2>> NG_cmd.log


echo  LAB0_test_start >> $gamen
echo  LAB0_test__start
echo  LAB0_test__start 1>&2



echo  LAB1_start >> $gamen
echo  LAB1_start
echo  LAB1_start 1>&2


#GUI ha check shitemasen

shutdown -k now


echo  LAB2_start >> $gamen
echo  LAB2_start
echo  LAB2_start 1>&2


pwd
#su  -  lpic
su -l lpic -c "pwd"
su -l lpic -c "cd  /"
su -l lpic -c "pwd"
su -l lpic -c "cd /home/lpic"
su -l lpic -c "cd  ../../"
su -l lpic -c "pwd"
su -l lpic -c "ls"
su -l lpic -c "cd  /var/log"
su -l lpic -c "pwd"
su -l lpic -c "cd  /var/log"
su -l lpic -c "pwd"
su -l lpic -c "ls"
su -l lpic -c "cd  /home/lpic"
su -l lpic -c "pwd"
su -l lpic -c "cd /var/log"
su -l lpic -c "cd  ../../home/lpic"
su -l lpic -c "pwd"
su -l lpic -c "cd ~"
su -l lpic -c "pwd"
su -l lpic -c "exit"


echo  LAB3_start >> $gamen
echo  LAB3_start
echo  LAB3_start 1>&2

su -l lpic -c "cd ~"
su -l lpic -c "touch file1"
su -l lpic -c "ls"
su -l lpic -c "touch file1"
su -l lpic -c "ls"
su -l lpic -c "mkdir dir1 dir2 dir3"
su -l lpic -c "ls"
su -l lpic -c "cp file1 dir1"
su -l lpic -c "ls dir1"
su -l lpic -c "cp -r dir1 dir2"
su -l lpic -c "ls dir2"
su -l lpic -c "mv dir1 dir3"
su -l lpic -c "ls dir3"
su -l lpic -c "rm dir2/dir1/file1"
su -l lpic -c "ls dir2/dir1"
su -l lpic -c "rm -r dir3"
su -l lpic -c "ls"


echo  LAB4_start >> $gamen
echo  LAB4_start
echo  LAB4_start 1>&2

find  /home  -name  "*.txt"
find  /home  -type  f  -mtime  -1
find  /boot  -size  +10M
cat /etc/passwd | grep root
cat /etc/passwd | grep ^root
cat /var/log/messages | grep error



echo  LAB5_start >> $gamen
echo  LAB5_start
echo  LAB5_start 1>&2

dd  if=/dev/zero  of=file1  bs=1024  count=1000
dd  if=/dev/zero  of=file2  bs=1024  count=1000
dd  if=/dev/zero  of=file3  bs=1024  count=1000
dd  if=/dev/zero  of=file4  bs=1024  count=1000
dd  if=/dev/zero  of=file5  bs=1024  count=1000
dd  if=/dev/zero  of=file6  bs=1024  count=1000
tar  cvf  fileA.tar  file1  file2  file3
tar  cvf  fileB.tar  file4  file5  file6
ls  -l  file*.tar
rm  -f  file?
gzip  fileA.tar
ls  -l  fileA.tar.gz
bzip2  fileB.tar
ls  -l  fileB.tar.bz2
gunzip  fileA.tar.gz
ls  -l  fileA.tar*
bzip2  -d  fileB.tar.bz2
ls  -l  fileB.tar*
tar  tvf  fileA.tar
tar  xvf  fileA.tar
tar  xvf  fileB.tar
ls  file*


echo  LAB6_start >> $gamen
echo  LAB6_start
echo  LAB6_start 1>&2

vi --help


echo  LAB7_start >> $gamen
echo  LAB7_start
echo  LAB7_start 1>&2

#GUI ha check shitemasen

groupadd  linux
usermod  -G  linux  user1
cat  /etc/group  |  grep  linux
useradd  user2
passwd  user2 << E
Ngn-sf123
Ngn-sf123
E
groupadd  lpic
usermod  -G  lpic  user2
cat  /etc/group  |  grep  lpic
useradd  user3
passwd  user3 << E
Ngn-sf123
Ngn-sf123
E
usermod  -G  linux,lpic  user3
cat  /etc/group  | grep  linux
cat  /etc/group  | grep  lpic


echo  LAB8_start >> $gamen
echo  LAB8_start
echo  LAB8_start 1>&2

#su  -  user2
su -l user2 -c "touch  /tmp/share.txt"
#exit
ls -al /tmp/share.txt
chgrp lpic /tmp/share.txt
chmod g+w /tmp/share.txt
ls -al /tmp/share.txt
#su - user2
su -l user2 -c "echo user2desu >> /tmp/share.txt"
su -l user3 -c "echo user3desu >> /tmp/share.txt"

echo  LAB9_start >> $gamen
echo  LAB9_start
echo  LAB9_start 1>&2

su -l user2 -c "cal"
su -l user2 -c "cal  >  kekka.txt"
su -l user2 -c "cat  kekka.txt"
su -l user2 -c "date"
su -l user2 -c "date  >>  kekka.txt"
su -l user2 -c "cat  kekka.txt"
su -l user2 -c "ls"
su -l user2 -c "ls  dir2  nodir  >  kekka1.txt"
su -l user2 -c "cat  kekka1.txt"
su -l user2 -c "ls  dir2  nodir  2>  kekka1.txt"
su -l user2 -c "cat  kekka1.txt"
su -l user2 -c "ls  dir2  nodir  &>  kekka1.txt"
su -l user2 -c "cat  kekka1.txt"
cat  /var/log/messages
cat  /var/log/messages  |  grep  error


echo  LAB10_start >> $gamen
echo  LAB10_start
echo  LAB10_start 1>&2

touch "sample1.sh"
echo "#!/bin/sh" >> sample1.sh
echo "" >> sample1.sh
echo 'echo "引数の文字列は $1 です。"' >> sample1.sh 

chmod  +x  sample1.sh
./sample1.sh  test


touch "sample2.sh"
echo "#!/bin/sh" >> sample2.sh
echo "for  i  in  A  B  C" >> sample2.sh
echo "do" >> sample2.sh
echo 'touch  "$1$i"; ls -l "$1$i"' >> sample2.sh
echo "done" >> sample2.sh
chmod  +x  sample2.sh
./sample2.sh test


echo  LAB11_start >> $gamen
echo  LAB11_start
echo  LAB11_start 1>&2

#GUI ha check shitemasen

yum list installed | grep ^sl
yum install -y  sl
sl

echo  LAB12_start >> $gamen
echo  LAB12_start
echo  LAB12_start 1>&2

mount
touch /lab11/testfile1
ls /lab11
umount /lab11
ls /lab11
mount
mount /dev/vda3 /lab11
ls /lab11
mount


echo  LAB13_start >> $gamen
echo  LAB13_start
echo  LAB13_start 1>&2

ps
pstree
last
who
w

echo  LAB14_start >> $gamen
echo  LAB14_start
echo  LAB14_start 1>&2

#GUI ha check shitemasen
ip addr show
nmcli device
cat /etc/sysconfig/network-scripts/ifcfg-eth0
cat /etc/resolv.conf
ping -c 2 8.8.8.8
host www.google.co.jp
host 172.217.31.163
dig www.google.co.jp
dig -x 172.217.31.163


echo  LAB15_start >> $gamen
echo  LAB15_start
echo  LAB15_start 1>&2

ip addr show
yum -y install httpd
echo "<html><body>好きな文字</body></html>" > /var/www/html/index.html 
systemctl start httpd
systemctl status httpd
yum -y install wget
wget http://127.0.0.1
cat index.html

exec 1>> $gamen
exec 2>> $gamen


