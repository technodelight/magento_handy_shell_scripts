#Handy Magento Shell Scripts

 This is a collection of shell scripts to make a magento developer's life a bit easier.

##increase-admin-session.sh

###Description

 This script extends the default admin session expiration time to 86400, and switches off the lock-out after x time feature.
 
###Usage
 
    ./increase-admin-session.sh


##create-db-dump.sh

###Description

 Simple shell script to simplify creating database dumps. The script uses the default root username/password combination to do the trick.
 
###Usage
 
    ./create-db-dump.sh [dbname] [sqlfile]

 The script defaults the `[dbname]` argument to magentodb while the `[sqlfile]` defaults to `[dbname]-[mdy].sql`. It could be safe to use together with `recreate-db.sh`. This script creates a symlink named `[dbname]-latest.sql`, which points to the last database dump you've made.


##recreate-db.sh

###Description

 Shell script to recreate a database from a dump. The script uses the default root username/password combination, like the `create-db-dump.sh`.
 
###Usage
 
    ./recreate-db.sh [sqlfile] [dbname]

 The script defaults the `[dbname]` argument to magentodb while the `[sqlfile]` defaults to `[dbname]-latest.sql`. It could be safely used in combination with `create-db-dump.sh`


##restart-services.sh

###Description

 Shell script to restart specified services at once
 
###Usage
 
    ./restart-services.sh [service1] [service2] ... [serviceN]


##magerun-install.sh

###Description

 Simple shell script to simplify installing magerun by running a one line command. It extends your path variable by appending an export to your `~/.bashrc` file. 
 
###Usage

    ./magerun-install.sh
 
 or install magerun directly using this script without downloading the whole handy tools repository:
 
    curl https://raw.githubusercontent.com/technodelight/magento_handy_shell_scripts/master/magerun-install.sh --insecure | `which sh`


##bashrc (Custom Bash Profile)

###Description

 Bash profile for to bring your work extra effective

###Usage (installation)

    cat bashrc | sude tee -a [profile path]

 or install directly from git repo

    curl -s https://raw.githubusercontent.com/technodelight/magento_handy_shell_scripts/master/bashrc | sudo tee -a [profile path]    

 Profile path could be ~/.bashrc or /etc/bashrc for common profile accross accounts (with centOS VM + root account you should give it a try)

#Author

 Zsolt Gal 
 <technodelight@gmail.com>

 Any feedbacks and suggestions welcome!
