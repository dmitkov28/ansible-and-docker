#!/bin/bash
sudo apt update
sudo apt install -y ansible
sudo apt install sshpass
sudo cp -r /vagrant/* .
ansible-playbook playbook.yaml
