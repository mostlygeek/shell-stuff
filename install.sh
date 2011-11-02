#
# Installation script designed to be run right off of github
#
# 1. curl https://raw.github.com/mostlygeek/shell-stuff/master/install.sh | bash
# 2. watch the magic happen

# test for existance of git
hash git 2>&- || { echo "Error: Git needs to be installed."; exit; }

cd ~

if [ -e mg-shellenv ]
then
   echo "Error: mg-shellenv already exists"
   exit
fi

git clone git@github.com:mostlygeek/shell-stuff.git mg-shellenv
cd mg-shellenv
./setup.sh
cd ~
