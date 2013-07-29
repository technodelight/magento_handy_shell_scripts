#create_db_dump.sh

##Description

 Simple shell script to simplify creating database dumps. The script uses the default root username/password combination to do the trick.
 
###Usage
 
    ./create_db_dump.sh [dbname] [sqlfile]

 The script defaults the `[dbname]` argument to magentodb while the `[sqlfile]` defaults to `[dbname]-[mdy].sql`. It could be safe to use together with `recreate_db.sh`. This script creates a symlink named `[dbname]-latest.sql`, which points to the last database dump you've made.


#recreate_db.sh

##Description

 Shell script to recreate a database from a dump. The script uses the default root username/password combination, like the `create_db_dump.sh`.
 
###Usage
 
    ./recreate_db.sh [sqlfile] [dbname]

 The script defaults the `[dbname]` argument to magentodb while the `[sqlfile]` defaults to `[dbname]-latest.sql`. It could be safely used in combination with `create_db_dump.sh`


#magerun_install.sh

##Description

 Simple shell script to simplify installing magerun by running a one line command. It extends your path variable by appending an export to your `~/.bashrc` file. 
 
###Direct URL to install:
 
    curl -sS https://raw.github.com/technodelight/magerun_shell_script_installer/master/magerun-install.sh | bash



#Author

 Any feedbacks and suggestions welcome!

 Zsolt Gal <technodelight@gmail.com>

