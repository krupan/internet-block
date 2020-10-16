#!/bin/sh
install_dir=/home/pi/internet-block
etterfilter $install_dir/drop-all.ecf -o $install_dir/drop-all.ef
sudo cp $install_dir/*.timer /etc/systemd/system/
sudo cp $install_dir/*.service /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl restart internet-start.timer
sudo systemctl restart internet-stop.timer
