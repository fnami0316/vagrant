#!/bin/bash

setenforce 0
yum -y update
yum install epel-release
yum -y groupinstall "Base" "Development tools" "Japanese Support"
yum -y install ansible


