sudo systemctl stop connman.service
sleep 1
sudo ip link set wlan0 down 
sleep 1
sudo modprobe -r ath10k_pci
sleep 2
sudo modprobe -r ath10k_core
sleep 2
sudo modprobe ath10k_pci
sleep 2
sudo ip link set wlan0 up  
sleep 1
sudo systemctl start connman.service
sleep 1
exit