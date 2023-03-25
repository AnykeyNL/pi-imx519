sudo raspi-config
- enable ssh
- enable i2c

add "cma=400M" to /boot/cmdline.txt

/etc/ssh/sshd_config
        PermitRootLogin prohibit-password
        
