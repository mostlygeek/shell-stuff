#
# Installation script designed to be run right off of github
#
# 1. curl https://raw.github.com/mostlygeek/shell-stuff/master/install.sh | bash
# 2. watch the magic happen

echo "Best results, run in $HOME"
curl -L https://github.com/mostlygeek/shell-stuff/tarball/master > shellenv.master.tar.gz
tar -zxvf shellenv.master.tar.gz
DIR=`ls -1 | grep mostlygeek-shell-`
mv $DIR shellenv
cd shellenv
./setup.sh
rm shellenv.master.tar.gz
