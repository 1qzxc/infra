!#/bin/bash

set -e

cd ~
git clone https://github.com/hashicorp/vagrant.git
cd vagrant
gem install bundler
bundle install
bundle --binstubs exec
ln -sf ~/vagrant/exec/vagrant /usr/bin/vagrant
vagrant --version
