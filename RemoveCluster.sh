#Stops the cluster
systemctl stop pve-cluster corosync
pmxcfs -l
rm -rf /etc/corosync/*
rm /etc/pve/corosync.conf
killall pmxcfs
systemctl start pve-cluster
