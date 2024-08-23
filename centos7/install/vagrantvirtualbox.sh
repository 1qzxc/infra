    1  clear
    2  ls
    3  yum install -y epel-release 
    4  clear
    5  yum install wget curl git -y
    6  clear
    7  git clone https://github.com/morozovme/infra.git
    8  ls infra/
    9  cd infra/
   10  git checkout centos7
   11  clear
   12  ls
   13  ls install/
   14  cat install/dockerinst.sh 
   15  ls install/
   16  touch install/dockerinst2.sh
   17  yum install -y yum-utils
   18  yum-config-manager     --add-repo     https://download.docker.com/linux/centos/docker-ce.repo
   19  yum install docker-ce docker-ce-cli containerd.io -y
   20  systemctl start docker
   21  systemctl enable docker
   22  history
   23  clear
   24  ls
   25  vi install/dockerinst2.sh 
   26  sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
   27  ls
   28  sudo chmod +x /usr/local/bin/docker-compose
   29  docker-compose --version
   30  vi install/dockerinst2.sh 
   31             sudo git config --global user.name "morozovme"
   32              sudo git config --global user.email "m.e.morozov1@gmail.com"
   33  git status
   34  git add install/dockerinst2.sh 
   35  git commit
   36  git push
   37  clear
   38  docker --version
   39  docker-compose --version
   40  clear
   41  ls
   42  git status
   43  git checkout shared-files
   44  cd docker/gitlabci/
   45  ls
   46  docker-compose up -d
   47  clear
   48  docker ps
   49  ls
   50  cat gitlab.rb 
   51  docker exec -ti 727f8c192139 /bin/bash
   52  clear
   53  docker-compose down
   54  clear
   55  ls
   56  git clone https://github.com/morozovme/vagrant-kubernetes.git
   57  ls
   58  cd vagrant-kubernetes/
   59  ls
   60  vagrant --version
   61  ruby --version
   62  yum install epel-release -y
   63  yum install wget curl git net-utils -y
   64  sudo yum update
   65  sudo yum install –y patch gcc kernel-headers kernel-devel make perl wget
   66  cd ..
   67  ls infra/
   68  cd infra/
   69  git checkout centos7
   70  ls
   71  ls install/
   72  reboot
   73  vi /etc/systemd/logind.conf 
   74  systemctl restart logind
   75  systemctl restart systemd-logind.service
   76  ls
   77  sudo wget http://download.virtualbox.org/virtualbox/rpm/el/virtualbox.repo -P /etc/yum.repos.d
   78  sudo yum install VirtualBox-6.0
   79  yum install -y git-core zlib zlib-devel gcc-c++ patch readline readline-devel libyaml-devel libffi-devel openssl-devel make bzip2 autoconf automake libtool bison curl sqlite-devel
   80  git clone git://github.com/sstephenson/rbenv.git .rbenv
   81  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
   82  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   83  exec $SHELL
   84  ды
   85  ls
   86  ls -la
   87  git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
   88  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.bash_profile
   89  exec $SHELL
   90  rbenv install -v 2.6.9
   91  rbenv
   92  exec /bin/bash
   93  rbenv
   94  ruby --version
   95  ls
   96  ls -la
   97  ls .rbenv/
   98  echo $HOME
   99  cat .bash_profile 
  100  rbenv
  101  which rbenv
  102  exec $SHELL
  103  rbenv
  104  printenv
  105  printenv | grep rbenv
  106  rbenv
  107  rbenv install -v 2.6.9
  108  ruby --version
  109  rbenv global 2.6.9
  110  ruby --version
  111  ls
  112  mkdir tmp
  113  cd tmp/
  114  git clone https://github.com/hashicorp/vagrant.git
  115  gem install bundler
  116  bundle install
  117  ls
  118  cd vagrant/
  119  bundle install
  120  bundle --binstubs exec
  121  ls
  122  cd vagrant-kubernetes/
  123  vagrant status
  124  cd ..
  125  ls
  126  cd tmp/vagrant/exec/
  127  ls
  128  pwd
  129  ln -sf /root/tmp/vagrant/exec/vagrant /usr/bin/vagrant
  130  vagrant --version
  131  cd ..
  132  ls
  133  cd vagrant-kubernetes/
  134  vagrant status
  135  ifconfig
  136  yum install net-util -y
  137  yum install net-tools -y
  138  ifconfig
  139  cd
  140  ls
  141  cd infra/
  142  git status
  143  git add .
  144  git stash
  145  git stash drop
  146  ls
  147  git status
  148  ls install/
  149  history >> install/vagrantvirtualbox.sh
