sudo apt-get -y install samba samba-common-bin

sudo nano /etc/samba/smb.conf

[pi3dscan]
path = /camsoft
writeable=Yes
create mask=0777
directory mask=0777
public=no


sudo smbpasswd -a pi3dscan
sudo systemctl restart smbd
