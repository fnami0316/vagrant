#!/bin/bash

setenforce 0


# EPEL���|�W�g���ǉ�
yum install epel-release

# Hubot�ɕK�v(������)�\�t�g���C���X�g�[��
yum -y groupinstall "Base" "Development tools" "Japanese Support"
yum -y install ansible
yum -y install nodejs npm
yum -y install libicu-devel.x86_64
yum -y update

npm install -g yo generator-hubot


