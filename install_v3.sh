sudo apt update
sudo apt install python3-pip
sudo pip3 install picamera2 --upgrade
sudo pip3 install pygame
sudo pip3 install pyserial
sudo apt -y install git

echo "Setting up auto IP configuration based on id.txt" 
echo 99 | sudo tee -a /boot/id.txt
echo 1 | sudo tee -a /boot/group.txt
sudo wget -O /etc/init.d/setidtoip https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/setidtoip 
sudo wget -O /etc/init.d/setip.py https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/setip.py
sudo chmod 755 /etc/init.d/setidtoip
sudo update-rc.d setidtoip defaults

echo "Setting up webserver" 
sudo apt -y install apache2

echo "Setting up auto login and running the listening script" 
sudo wget -O /etc/systemd/system/getty@tty1.service.d/scanlisten.conf https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/scanlisten.conf
