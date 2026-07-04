#!/bin/bash

component=$1
env=$2
dnf install ansible -y
mkdir -p /var/log/roboshop/
chown -R ec2-user:ec2-user /var/log/roboshop/
chmod -R 755 /var/log/roboshop/
touch /var/log/roboshop/ansible.log

cd /home/ec2-user
rm -rf roboshop-ansible-v3
git clone https://github.com/bnvkishore/roboshop-ansible-v3.git
cd roboshop-ansible-v3
git pull

cp /home/ec2-user/.vault_pass /home/ec2-user/roboshop-ansible-v3/.vault_pass
chmod 600 /home/ec2-user/roboshop-ansible-v3/.vault_pass
ansible-playbook -e component=$component -e env=$env roboshop.yaml