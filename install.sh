#!/bin/sh
sudo cp *.timer /etc/systemd/service/
sudo cp *.service /etc/systemd/service/
etterfilter drop-all.ecf -o drop-all.ef
sudo systemctl daemon-reload
sudo systemctl restart internet-start.timer
sudo systemctl restart internet-stop.timer
