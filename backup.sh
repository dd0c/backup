#!/usr/bin/bash

DAY=`date +%d`
MONTH=`date +%m`
YEAR=`date +%Y`

# Backup directory to use (20221122 for 22.11.2022)
BKDIR="/root/backups/$YEAR$MONTH$DAY"

if [ ! -d "$BKDIR" ]; then
        mkdir -p $BKDIR
fi

# Locations to backup
BLOC1="/etc"
BLOC2="/var/www"

tar -czf $BKDIR/$(hostname).tar.gz $BLOC1 $BLOC2
