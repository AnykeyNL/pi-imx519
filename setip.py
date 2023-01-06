fid = open('/boot/id.txt','r')
fi = open('/etc/dhcpcd.conf','w')

id = fid.read()

print ("Setting IP address with ID: {}".format(id))

id = id.strip()

fi.write("#Do NOT edit, file is controlled by setid python script\n")
fi.write("\n")
fi.write("interface eth0\n")

fi.write("static ip_address=192.168.99." + id + "/24\n")
fi.write("static routers=192.168.99.1\n")
fi.write("static domain_name_servers=192.168.99.1\n")

fid.close()
fi.close()
