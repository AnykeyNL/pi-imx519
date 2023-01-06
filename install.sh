sudo apt update
echo "Installing the 16MP camera drivers"
wget -O install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh 
chmod +x install_pivariety_pkgs.sh
./install_pivariety_pkgs.sh -p libcamera_dev
./install_pivariety_pkgs.sh -p libcamera_apps
./install_pivariety_pkgs.sh -p imx519_kernel_driver_low_speed
sudo apt install -y python3-kms++
sudo apt install -y python3-pyqt5 python3-prctl libatlas-base-dev ffmpeg python3-pip
sudo pip3 install numpy --upgrade
sudo pip3 install picamera2 --upgrade
sudo pip3 install pygame
sudo pip3 install pyserial

sudo apt -y install libraw-dev
sudo apt -y install git
git clone https://github.com/letmaik/rawpy
cd rawpy
sudo pip install numpy cython
sudo pip install .

echo "Setting up auto IP configuration based on id.txt" 
echo 100 | sudo tee -a /boot/id.txt
echo 1 | sudo tee -a /boot/group.txt
sudo wget -O /etc/init.d/setidtoip https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/setidtoip 
sudo wget -O /etc/init.d/setip.py https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/setip.py
sudo chmod 755 /etc/init.d/setidtoip
sudo update-rc.d setidtoip defaults

echo "Setting up webserver" 
sudo apt -y install apache2

echo "Setting up auto login and running the listening script" 
sudo wget -O /etc/systemd/system/getty@tty1.service.d/scanlisten.conf https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/scanlisten.conf

