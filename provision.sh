# Install Some PPAs

apt-get install -y software-properties-common
apt-add-repository ppa:chris-lea/node.js -y

# Update Package Lists

apt-get update
apt-get upgrade -y

# Install core packages

apt-get install -y \
  git \
  curl \
  build-essential \
  cmake \
  python-dev \
  libevent-dev \
  libncurses-dev \
  vim \
  zsh

# Install docker

apt-get install -y docker.io
ln -sf /usr/bin/docker.io /usr/local/bin/docker
usermod -aG docker vagrant

# Install tmux 1.9a

mkdir /opt/tmux
cd /opt/tmux && curl -L -O http://downloads.sourceforge.net/tmux/tmux-1.9a.tar.gz && tar xzf tmux-1.9a.tar.gz
cd /opt/tmux/tmux-1.9a && ./configure && make && make install

# Install node 

apt-get install -y node.js
apt-get install -y npm

npm install -g grunt-cli
npm install -g bower
npm install -g gulp
npm install -g express

