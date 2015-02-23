#!/usr/bin/env bash

# Reference:	http://pkg.jenkins-ci.org/debian/
wget -q -O - http://pkg.jenkins-ci.org/debian/jenkins-ci.org.key | sudo apt-key add -
sh -c 'echo deb http://pkg.jenkins-ci.org/debian binary/ > /etc/apt/sources.list.d/jenkins.list'

# Installing Jenkins
apt-get update
apt-get install -y jenkins

# Starting Jenkins service
# TODO: install should ideally also start Jenkins, need to check.
sudo /etc/init.d/jenkins start