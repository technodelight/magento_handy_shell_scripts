#!/bin/bash

DATABASE=$1;
SQL=$2;

if ["$DATABASE" = ""]; then
    DATABASE='magentodb'
fi
LATEST=$DATABASE-latest.sql

if ["$SQL" = ""]; then
    SQL="$DATABASE-`date "+%m%d%y"`.sql"
fi

mysqldump -uroot -proot $DATABASE > $SQL
if [ -f $LATEST ]; then
    unlink $LATEST
fi
ln -s $SQL $DATABASE-latest.sql