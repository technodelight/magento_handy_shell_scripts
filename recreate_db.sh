#!/bin/bash

SQL=$1;
DATABASE=$2;
if ["$SQL" = ""]; then
    SQL=$DATABASE-latest.sql
fi

if [!-f $SQL]; then
    echo "Dump file $SQL not exists!"
    exit 1
fi

if ["$DATABASE" = ""]; then
    DATABASE='magentodb'
fi

mysqladmin -uroot -proot drop $DATABASE
if mysqladmin -uroot -proot create $DATABASE; then
    echo "Database \"$DATABASE\" created"
else
    exit "Cannot create database $DATABASE"
fi
if mysql -uroot -proot $DATABASE < $SQL; then 
    echo "Database \"$DATABASE\" imported"
else
    echo "Data import to $DATABASE failed from file $SQL"
fi