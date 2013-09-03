#/bin/bash
for SERVICE in $@
do
    service $SERVICE restart
done

