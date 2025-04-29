cd /etc/sysconfig/network-scripts/
ll
cat ifcfg-ens3 
cp ifcfg-ens3 /root/
ip a
vi ifcfg-ens3 
ip a
nmcli device reapply ens3
nmcli device connect ens3
cat  ifcfg-ens3 
reboot
cd /root/
ll
cat ifcfg-ens3 
ip 
ip a
yum update
yum clean packages
yum upgrade -y
yum install zip unzip wget vim curl -y
yum install zip unzip wget vim curl tree  -y
yum install zip unzip wget vim curl tree  inetutils-ping -y
yum install zip unzip wget vim curl tree  net-tools -y
reboot
cat /etc/passwd
pwd
ll
cd /etc/cloud/
ll
pwd
cat cloud.cfg
df -Th
ll
cd templates/
ll
cd ..
ll
cat cloud.cfg
df -Th
cloud-init clean && cloud-init clean --logs
ll
cd clean.d/
ll
cat README 
EXIT
cd ..
ll
cloud-init -h
ip a
yum install cloud-init
cd /etc/cloud/
ll
cat cloud.cfg
ll
cd cloud.cfg.d/
ll
cat 05_logging.cfg 
cd ..
ll
cat cloud.cfg
vi /etc/ssh/sshd_config
systemctl restart sshd
ll
cd /etc/ssh
ll
df -Th
cd /etc/ssh/
ll
cat sshd_config 
vi sshd_config 
ll
cd /etc/rc.d/
ll
vi rc.local 
cat rc.local 
vi /usr/local/bin/expandlvm.sh
chmod +x  /usr/local/bin/expandlvm.sh
ll
cd 
#!/bin/bash
sed -i 's/PasswordAuthentication no/PasswordAuthentication yes/g' /etc/ssh/sshd_config
service sshd restart
Current_Size_S=$(df -Th |grep almalinux | awk '{print $3}'| cut -f 1 -d 'G' |cut -f 1 -d '.')
size=`expr $Current_Size_S`
if [ $size -lt 10 ]; then     echo "need expand disk";     parted /dev/sda resizepart 2 100%; lvm pvresize -v /dev/sda2; lvextend -l +100%FREE /dev/almalinux/root; xfs_growfs /dev/almalinux/root; else echo "no need expand disk"; fi
df -Th
history
cd /etc/rc.d/
ll
vi rc.local 
mv /usr/local/bin/expandlvm.sh .
ll
pwd
vi rc.local 
cat rc.local 
ll
vi /etc/rc.d/expandlvm.sh 
ll
vi /etc/default/grub
grub2-mkconfig -o /boot/grub2/grub.cfg
sudo systemctl start serial-getty@ttyS0.service
sudo systemctl enable serial-getty@ttyS0.service
yun update
yum update
yum install -y net-tools cloud-init dos2unix vim tree nano wget net-tools unzip zip curl 
sudo dnf install -y kernel-headers-$(uname -r) kernel-devel-$(uname -r) tar bzip2 make automake gcc gcc-c++ pciutils elfutils-libelf-devel libglvnd-opengl libglvnd-glx libglvnd-devel acpid pkgconfig 
cd /usr/local/bin/
ll
cd /etc/rc.d/
ll
cat rc.local 
cd ..
ll
systemctl enable cloud-init
systemctl status cloud-init
df -Th
exit
cat /etc/os-release 
cd /bot
cd /boot/
ll
echo -e "blacklist nouveau\noptions nouveau modeset=0" | sudo tee /etc/modprobe.d/blacklist-nouveau.conf
sudo dracut --force
systemctl isolate multi-user.target
dnf install kernel-modules -y
ip a
ll
dnf distro-sync -y
ll
reboot
ip a
cd /usr/local/bin/
ll
cat /usr/local/bin/expandlvm.sh
cd /etc/rc.d/
ll
cat expandlvm.sh 
vi expandlvm.sh 
cat expandlvm.sh 
ll
pwd
cat rc.local 
shutdown
date
cat /etc/os-release 
ip a
fidsk -l
fdisk -l
lsblk
cd /etc/rc.d/
ll
vi expandlvm.sh 
cat expandlvm.sh 
vi expandlvm.sh 
cat expandlvm.sh 
bash -x expandlvm.sh 
df -Th
cd /etc/rc.d/
ll
chmod +x rc.local 
ll
cd /etc/cloud/
ll
vi cloud.cfg
uname -r
python -V
python --version
python -v
python -V
which python
systemctl status firewalld
firewall-cmd --list-all
cat /etc/os-release 
free -m
lspci
dnf update -y
which python
dnf -y update
dnf -y install nano wget tar epel-release chkconfig libedit-devel
sestatus
sed -i s/SELINUX=enforcing/SELINUX=disabled/g /etc/selinux/config
reboot
cd /usr/src
wget http://downloads.asterisk.org/pub/telephony/asterisk/asterisk-21-current.tar.gz
tar zxvf asterisk-21-current.tar.gz
rm -rf asterisk-21-current.tar.gz
cd asterisk-21*/
contrib/scripts/install_prereq install
./configure --with-jansson-bundled
dnf search libedit
yum install libedit
yum install libedit*
dnf install -y libedit-devel
systemctl status fail2ban
dnf install fail2ban
dnf install epel-release
dnf install fail2ban fail2ban-firewalld
history
cd /usr/src/
cd asterisk-21.6.1/
./configure --with-jansson-bundled
yum install libedit-devel
cd /usr/src/asterisk-21.6.1/
wget https://repo.almalinux.org/almalinux/8/PowerTools/x86_64/os/Packages/libedit-devel-3.1-23.20170329cvs.el8.x86_64.rpm
ls
dnf --enablerepo=powertools install libedit-devel
dnf install -y libedit-devel
./configure --with-jansson-bundled
dnf install fail2ban fail2ban-firewalld
sudo systemctl start fail2ban
sudo systemctl enable fail2ban
sudo systemctl status fail2ban
touch /etc/fail2ban/jail.local
vim /etc/fail2ban/jail.local 
mv /etc/fail2ban/jail.d/00-firewalld.conf /etc/fail2ban/jail.d/00-firewalld.local
sudo systemctl restart fail2ban
vim /etc/fail2ban/jail.d/sshd.local
systemctl restart fail2ban
sudo fail2ban-client status
sudo fail2ban-client status sshd
fail2ban-client status
fail2ban-client status sshd
vim /etc/fail2ban/jail.local 
vim /etc/fail2ban/jail.d/sshd.local 
make menuselect
cd /usr/src/asterisk-21.6.1/
make menuselect
make
cd /usr/src/asterisk-21.6.1/
make install
cd /usr/src/asterisk-21.6.1/
make samples
mkdir /etc/asterisk/samples
mv /etc/asterisk/*.* /etc/asterisk/samples/
make basic-pbx
touch /usr/lib/systemd/system/asterisk.service
cat <<'EOF' >/usr/lib/systemd/system/asterisk.service
[Unit]
Description=Asterisk PBX and telephony daemon.
#After=network.target
#include these if Asterisk need to bind to a specific IP (other than 0.0.0.0)
Wants=network-online.target
After=network-online.target network.target

[Service]
Type=simple
Environment=HOME=/var/lib/asterisk
WorkingDirectory=/var/lib/asterisk
ExecStart=/usr/sbin/asterisk -mqf -C /etc/asterisk/asterisk.conf
ExecReload=/usr/sbin/asterisk -rx 'core reload'
ExecStop=/usr/sbin/asterisk -rx 'core stop now'

LimitCORE=infinity
Restart=always
RestartSec=4

# Prevent duplication of logs with color codes to /var/log/messages
StandardOutput=null

PrivateTmp=true

[Install]
WantedBy=multi-user.target
EOF

systemctl enable asterisk.service
systemctl start asterisk
systemctl status asterisk
asterisk -r
cd /etc/asterisk/
vim extensions.conf 
vim extensions_custom.conf 
asterisk -vvvvvvvvvvvvvr
firewall-cmd --list-all
firewall-cmd --add-port=5060/udp --permanent
firewall-cmd --reload
cd /var/lib/asterisk/agi-bin/
chmod +x test1.py 
pip list
pip uninstall asterisk
pip list
pip uninstall pyst2
cd /usr/local/lib/python3.12/site-packages
ls
pwd
pip install pyst
pip list
ls
cd asterisk/
ls
cd /var/lib/asterisk/agi-bin/
vim test1.py 
firewall-cmd --add-port=10000-20000/udp --permanent
firewall-cmd --reload
firewall-cmd --list-all
vim test1.py 
cd /usr/src/
ls
cd asterisk-21.6.1/
make menuselect
history
make
make install
vim /var/lib/asterisk/agi-bin/test1.py 
python /var/lib/asterisk/agi-bin/test1.py
vim /var/lib/asterisk/agi-bin/test1.py 
cd /etc/asterisk/
vim pjsip.conf 
ls
cd samples/
ls
vim pjsip.conf 
cd ..
vim pjsip.conf 
vim extensions.conf 
vim extensions_custom.conf 
asterisk -rx "module show like agi"
vim extensions_custom.conf 
vim pjsip.conf 
locate tt-monkeys
dnf install mlocate
updatedb
locate tt-monkeys
ls -ll /var/lib/
ls -ll /var/lib/asterisk/
ls -ll /var/lib/asterisk/sounds/
ls -ll /var/lib/asterisk/sounds/en/
chmod -R 777 /var/lib/asterisk/sounds/en/tt-mon*
vim extensions_custom.conf 
ls /var/lib/asterisk/sounds/en
vim extensions_custom.conf 
asterisk -rx "pjsip show endpoint 101" | grep "Allowed Codecs"
tail -f /var/log/asterisk/full
cd /etc/asterisk/
vim pjsip.conf 
sngrep
vi nano ~/.ssh/config
vim ~/.ssh/config
vim /etc/ssh/sshd_config
sudo systemctl restart sshd
fail2ban-client status
fail2ban-client status sshd
asterisk -vvvvvvvvvvvvvvvvvvvvvvr
w
ls
cd /var/lib/asterisk/agi-bin/
ls
which python
dnf install python
dnf install python3.12
which python
which python3.12
python --version
python3.12 --version
ls -l /usr/bin/python3.12
sudo ln -s /usr/bin/python3.12 /usr/bin/python
python --version
which python
ls
pip -version
pip --version
dnf install pip
vim test1.py
which python
vim test1.py
python test1.py
vim test1.py
python test1.py
pip install pyst2
dnf install pip
python3.12 -m ensurepip --default-pip
python3.12 -m pip install --upgrade pip
pip version
pip --version
pip list
pip install asterisk
ls
pip list
python test1.py
pip install wikidata
python test1.py
pip install pyst2
python test1
python test1.py 
vim test1.py
python test1.py 
vim test1.py
python test1.py 
vim test1.py
python test1.py 
vim test1.py
pip list 
ls
pip remove asterisk
vim client.py
python client.py
vim call_handler.py
python call_handler.py
python client.py
ls
vim call_handler.py 
python call_handler.py 
python call_handler.py hello
python call_handler.py "hello"
vim call_handler.py 
vim client.py 
python client.py 
vim server.py 
vim swap.py
python swap.py
vim swap.py
python swap.py
vim swap.py
python swap.py
vim swap.py
python swap.py
vim swap.py
python swap.py
vim swap.py
python swap.py
ls
vim test.py
python test.py
which python
vim test.py
python test.py
pip list
pip install websockets
pip list
python test.py
firewall-cmd --list-alll
firewalld-cmd --list-alll
firewall-cmd --list-all
sngrep
dnf install sngrep
firewall-cmd --add-port=8765/tcp
firewall-cmd --add-port=8765/tcp --permanent
firewall-cmd --reload
python test.py
mv test.py server.py
python server.py 
vim  server.py 
python server.py 
vim  server.py 
python server.py 
vim  server.py 
python server.py 
lscpu
python test.py 
w
ls
vim test.py
ls
mkdir dir1
cd dir1/
touch text{1..10}.txt
ls
cd ..
pwd
vim test.py
clear
ls
cd dir
cd dir1
ls
cd ..
python test.py 
vim test.py 
python test.py 
vim test.py 
python test.py 
vim test.py 
ls
pwd
vim test.py 
python test.py 
vim test.py 
cd /root/
ls
python test.py 
ls
cd dir1/
ls
cd ..
ls
python test.py 
vim test.py 
cd /etc/asterisk/
ls
vim extensions.conf 
vim extensions_custom.conf 
cd /usr/src/
ls
cd asterisk-21.6.1/ls
cd asterisk-21.6.1/
ls
make menuselect
history
./configure --with-jansson-bundled
make
make menuselect
./configure --with-jansson-bundled
make menuselect
make
make install
make samples
tail -f /var/log/asterisk/mess
vim /etc/asterisk/logger.conf
systemctl restart asterisk
tail -f /var/log/asterisk/mess
tail -f /var/log/asterisk/messages.log 
cd /etc/asterisk/
vim extensions_custom.conf 
systemctl status fail2bad
systemctl status fail2ban
fail2ban-client status
asterisk -vvvvvvvvvvvvvvvvvvvr
systemctl restart asterisk
asterisk -vvvvvvvvvvvvvvvvvvvr
asterisk -vvvvvvvvr
ls
vim fastagi.py
python fastagi.py 
vim fastagi.py
firewall-cmd --list-all
firewall-cmd --add-port=4573 --permanent
firewall-cmd --add-port=4573/tcp --permanent
firewall-cmd --reload
python fastagi.py 
dnf install portaudio
locate chan_console.so
updatedb
locate chan_console.so
ldconfig -p | grep portaudio
yum install portaudio portaudio-devel -y
ldd /usr/lib/asterisk/modules/app_audiosocket.so | grep portaudio
cd /etc/asterisk/
ls
vim extensions.conf
sngrep
top
cd /etc/fail2ban/
ls
vim jail.local 
vim jail.conf 
vim jail.local 
vim fail2ban.conf 
cd action.d/
ls
cd ..
ls
cd jail.d/
ls
vim sshd.local 
vim asterisk.local
systemctl reload fail2ban
fail2ban-client status
systemctl restart fail2ban
fail2ban-client status
ls
cd ..
ls
vim jail.conf 
ls
cd jail.d/
ls
cd ..
cd filter.d/
ls
vim asterisk.conf 
cd ..
ls
vim jail.local 
systemctl restart fail2ban
fail2ban-client 
fail2ban-client  status
ls
cd jail.d/
ls
rm -rf asterisk.local 
systemctl restart fail2ban
fail2ban-client  status
cd ..
ls
vim jail.local 
systemctl restart fail2ban
fail2ban-client  status
ls
cd filter.d/
ls
vim sshd.conf 
cd ..
ls
cd jail.d/
ls
vim sshd.local 
vim asterisk.local
systemctl restart fail2ban
systemctl status fail2ban
systemctl restart fail2ban
systemctl status fail2ban
ls
vim asterisk.local 
rm -rf asterisk.local 
cd ..
ls
vim jail.local 
systemctl restart fail2ban
systemctl status fail2ban
vim jail.local 
fail2ban-client -d
fail2ban-client -d jail.local
fail2ban-client status asterisk
systemctl status firewalld
ls
cd jail.d
ls
pws
pwd
ls
vim asterisk.local
cd ..
vim jail.local 
systemctl restart fail2ban
systemctl status fail2ban
cd ..
ls
cd fail2ban/
ls
cd jail.d
ls
rm -rf asterisk.local 
ls
systemctl restart fail2ban
cd ~
ls
python fastagi.py
vim fastagi.py
python fastagi.py
vim fastagi.py
python fastagi.py
vim fastagi.py
python fastagi.py
vim fastagi.py
python fastagi.py
vim fastagi.py
python fastagi.py
vim fastagi.py
python fastagi.py
pip list
python fastagi.py
vim fastagi.py
python fastagi.py
ps -aux | grep 4573
top
netstat -tulpn | grep 4573
kill -9 176098/python
kill -9 176098
netstat -tulpn | grep 4573
python fastagi.py
python test1.py 
python fastagi.py
python test1.py 
clear
ls
cd dir1/
ls
cd ..
ls
vim test.py 
ipa
ip a a
ip a 
ls
vim test1.py 
cat test1.py 
clear
php -v
systemctl status httpd
which php
dnf install php
which php
ls
mkdir php_course
cd php_course/
ls
vim car.php
cd php_course/
php car.php 
ls
vim index.php
php index.php
vim index.php
cd php_course/
php index.php 
asterisk -rvvvvvv
ls
cd dir1/
ls
clear
ls
cd dir1/
ls
cd ..
ls
cd php_course/
ls
cd ..
ls
clear
node -v
node --v
clear
node --version
clear
ls
dnf module list nodejs
dnf install nodejs
node -v
ls
mkdir nodejs
cd nodejs
ls
vim test.js
./test.js
node test.js 
npm nodemon
npm -i nodemon
npm i nodemon
ls
npm init
ls
vim package.json 
ls
npm list
npm m list
npm module list
npm list
npm list --depth=0
clear
ls
vim test.js 
firewall-cmd --list-all
firewall-cmd --add-port=3000/tcp --permanent
firewall-cmd --reload
vim test.js 
vim /etc/asterisk/pjsip.conf
vim test.js 
node --check test.js 
vim test.js 
cd nodejs/
ls
nodemon test.js 
nodemon test.js
npx nodemon test.js
ps -aux | grep node
pkill -9 51716
ps -aux | grep node
pkill -9 node
ps -aux | grep node
kill 242823
ps -aux | grep node
cd nodejs/
ls
vim data.conf
clear
vim data.conf
vim test.js 
cp test1.xjs 
exit
ls
cd nodejs/
ls
npx nodemon test.js
exit
ls
cd nodejs/
ls
vim test1.js
python test1.js 
vim test1.js
python test1.js 
node test1.js 
vim test1.js
node test1.js 
vim test1.js
node test1.js 
ls
vim test1.js 
node test1.js 
vim test1.js 
node test1.js 
vim test1.js 
node test1.js 
ls
vim test1.js 
node test1.js 
ls
vim test1.js 
vim sip.conf 
vim test1.js 
vim sip.conf 
node test1.js 
vim sip.conf 
node test1.js 
vim test1.js 
vim sip.conf 
vim test1.js 
node test1.js 
vim test1.js 
nodejs test1.js 
node test1.js 
vim test1.js 
vim sip.conf 
cd nodejs/
ls
nodemon test1.js 
npx nodemon test.js
npx nodemon test1.js
mysql -uroot -p
cd /etc/asterisk/
ls
vim pjsip.conf
cp pjsip.conf pjsip.conf.old
ls
clear
vim extensions_custom.conf 
ip a
vim extensions_custom.conf 
vim /etc/asterisk/ari.conf
cd ~
ls
npm list
cd nodejs/
npm list
cd ..
ls
mkdir ari
cd ari/
npm list
npm install ari-client
npm list
vim call.js
node call.js
firewall-cmd --list-all
firewall-cmd --add-port=8088/tcp --permanent
firewall-cmd --reload
node call.js
w
asterisk -vvvvvvvvvvvr
ls
cd ari/
ls
node calls.js
vim call.js 
node call.js 
vim /etc/asterisk/ari.conf 
node call.js 
vim /etc/asterisk/ari.conf 
node call.js 
asterisk -vvvvvvvvvvvvvvvvr
asterisk -vvvvvvvvvvvvvvvvvvvr
vim /etc/asterisk/extensions_custom.conf 
vim /etc/asterisk/pjsip.conf
vim /etc/asterisk/extensions_custom.conf 
vim /etc/asterisk/pjsip.conf
systemctl stop asterisk
exit
asterisk -vvvvvvvvvvvr
exit
cd ari/
ls
dnf install curl
lsnetstat -tulnp | grep 8088
netstat -tulnp | grep 8088
curl -u mukhtar:'786Mukhtar!@#' http://127.0.0.1:8088/ari/applications
asterisk -rx "http show status"
vim /etc/asterisk/http.conf 
asterisk -vvvvvvvvvvvvvvvvr
curl -u mukhtar:'786Mukhtar!@#' http://127.0.0.1:8088/ari/applications
node call.js 
vim call.js 
node call.js 
vim call.js 
node call.js 
mv call.js call1.js 
ls
vim call.js
node call.js
vim call2.js
node call2.js
node call3.js
vim call3.js
node call3.js
vim call3.js
node call3.js
vim calls4.js
node call4.js
vim calls4.js
node call4.js
ls
node calls4.js
vim calls4.js
node calls4.js
node calls5.js
vim calls5.js
node calls5.js
