######____ packetbeat@@#####


#[apt]
sudo apt-get update && sudo apt-get install packetbeat
sudo systemctl enable packetbeat


[pasta]

nano packetbeat.reference.yml

[alterar]
packetbeat.interfaces.device: any
packetbeat.interfaces.device: 0

#[commandos]#
systemctl start packetbeat 
systemctl stop packetbeat
systemctl enable packetbeat 
systemctl disable packetbeat
journalctl -u packetbeat.service
systemctl status packetbeat

#[pasta]yml"
/etc/packetbeat/packetbeat.yml