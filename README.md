#Description

 Simple shell script to simplify installing magerun by running a one line command
 
##Direct URL to install:
 
    curl -sS https://raw.github.com/technodelight/magerun_shell_script_installer/master/magerun-install.sh | bash

##Known Issues

 The export command which modifies the path to include `/usr/local/bin` may not run after installing magerun. You can do this manually with running
 `export PATH=$PATH:/usr/local/bin/`
 from the command line.

##Author

 Any feedbacks and suggestions welcome!

 Zsolt Gal <technodelight@gmail.com>

