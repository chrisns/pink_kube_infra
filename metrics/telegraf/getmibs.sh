#!/bin/sh
mkdir -p MIBS
cd MIBS
wget http://dl.ubnt-ut.com/snmp/UBNT-MIB
wget http://dl.ubnt-ut.com/snmp/UBNT-UniFi-MIB
wget https://raw.githubusercontent.com/WaterByWind/grafana-dashboards/master/UniFi-UAP/mibs/FROGFOOT-RESOURCES-MIB
#https://global.download.synology.com/download/Document/MIBGuide/Synology_MIB_File.zip