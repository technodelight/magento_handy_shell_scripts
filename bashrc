# useful settings for your VM, you can append this to your /etc/bashrc file
# start work in the project directory
cd /mnt/project
# add extra path setting to allow reaching your shell scripts
export PATH=$PATH:/usr/local/bin/
# quite useful shorthand for magerun - you don't have to go always to the project root directory
alias n98="n98-magerun.phar --root-dir=/mnt/project/public"
alias what-did-i-work-on-recently='git log --format="%ae %ad %s" --date=short -100 | grep "<your-email-address-here>" | grep -oE "[0-9\-]+ [A-Z]+-[0-9]+.*"'