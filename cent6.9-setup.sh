#! /bin/bash
yum -y update
#yum -y groupinstall "Development tools"
#yum -y groupinstall "Base"
#yum -y groupinstall "X Window System"
#yum -y groupinstall "Desktop"
#yum -y groupinstall "Japanese Support"
#echo "export LANG=ja_JP.UTF-8

mkdir -p ~/src/data
cd ~/src/data
wget http://ftp-srv2.kddilabs.jp/Linux/distributions/fedora/epel/6/x86_64/epel-release-6-8.noarch.rpm
rpm -ivh epel-release-6-8.noarch.rpm
cd /etc/yum.repos.d/
wget http://download.opensuse.org/repositories/shells:fish:release:2/CentOS_6/shells:fish:release:2.repo
cd
yum -y install fish tmux

