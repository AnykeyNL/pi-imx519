wget -O install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh 
chmod +x install_pivariety_pkgs.sh
./install_pivariety_pkgs.sh -p libcamera_dev
./install_pivariety_pkgs.sh -p libcamera_apps
./install_pivariety_pkgs.sh -p imx519_kernel_driver_low_speed

sudo apt install -y python3-kms++
sudo apt install -y python3-pyqt5 python3-prctl libatlas-base-dev ffmpeg python3-pip
sudo pip3 install numpy --upgrade
sudo pip3 install picamera2 --upgrade

echo 99 | sudo tee -a /boot/id.txt
sudo wget -o /etc/init.d/setidtoip https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/setidtoip 
sudo wget -o /etc/init.d/setip.py https://raw.githubusercontent.com/AnykeyNL/pi-imx519/main/setip.py
sudo chmod 755 /etc/init.d/setidtoip

