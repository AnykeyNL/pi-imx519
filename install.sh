sudo raspi-config
- enable ssh
- enable i2c

wget -O install_pivariety_pkgs.sh https://github.com/ArduCAM/Arducam-Pivariety-V4L2-Driver/releases/download/install_script/install_pivariety_pkgs.sh 
chmod +x install_pivariety_pkgs.sh
./install_pivariety_pkgs.sh -p libcamera_dev
./install_pivariety_pkgs.sh -p libcamera_apps
./install_pivariety_pkgs.sh -p imx519_kernel_driver_low_speed

sudo apt install -y python3-kms++
sudo apt install -y python3-pyqt5 python3-prctl libatlas-base-dev ffmpeg python3-pip
sudo pip3 install numpy --upgrade
sudo pip3 install picamera2 --upgrade



notes:
Requirement already satisfied: pillow in /usr/lib/python3/dist-packages (from picamera2) (8.1.2)
Requirement already satisfied: python-prctl in /usr/lib/python3/dist-packages (from picamera2) (1.7)
Requirement already satisfied: simplejpeg in /usr/lib/python3/dist-packages (from picamera2) (1.6.4)
Requirement already satisfied: numpy in /usr/local/lib/python3.9/dist-packages (from picamera2) (1.23.5)
Requirement already satisfied: v4l2-python3 in /usr/lib/python3/dist-packages (from picamera2) (0.3.1)
Requirement already satisfied: piexif in /usr/lib/python3/dist-packages (from picamera2) (1.1.3)
Requirement already satisfied: PiDNG in /usr/lib/python3/dist-packages (from picamera2) (4.0.9)
