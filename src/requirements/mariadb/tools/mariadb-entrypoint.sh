#!/bin/sh

#Variable definition
DATA_DIR="/var/lib/mysql/mysql"

#Check the folder
if [! -d "$DATA_DIR" ]; then
    echo "Initializing Database"
    mysql_install_db --usr=mysql --basedir=/user --datadir=/var/lib/mysql
fi

#execute as pd1

exec mysqld