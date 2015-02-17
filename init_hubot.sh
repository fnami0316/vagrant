#!/bin/bash

setenforce 0


# EPELリポジトリ追加
yum install epel-release

# Hubotに必要(そうな)ソフトをインストール
yum -y groupinstall "Base" "Development tools" "Japanese Support"
yum -y install ansible
yum -y install nodejs npm
yum -y install libicu-devel.x86_64
yum -y update

npm install -g yo generator-hubot


