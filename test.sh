#!/bin/sh
echo 'echo hello world'

system-config-network-cmd -i <<EOF
DeviceList.Ethernet.eth0.type=Ethernet
DeviceList.Ethernet.eth0.BootProto=static
DeviceList.Ethernet.eth0.OnBoot=True
DeviceList.Ethernet.eth0.NMControlled=True
DeviceList.Ethernet.eth0.Netmask=255.255.255.224
DeviceList.Ethernet.eth0.IP=10.230.43.7
DeviceList.Ethernet.eth0.Gateway=10.230.43.1
ProfileList.default.ActiveDevices.1=eth0
EOF

service network stop
service network start

pause