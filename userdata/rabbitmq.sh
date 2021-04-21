#!/bin/bash
#Install RabbitMQ on CentOS 7
sudo yum -y install epel-release
sudo yum -y update
#Install Erlang
#Download repository
wget http://packages.erlang-solutions.com/erlang-solutions-1.0-1.noarch.rpm
#Add repository
sudo rpm -Uvh erlang-solutions-1.0-1.noarch.rpm
#Install erlang and dependencies
sudo yum -y install erlang socat logrotate
#Install RabbitMQ and Download RabbitMQ package
wget https://github.com/rabbitmq/rabbitmq-server/releases/download/v3.8.8/rabbitmq-server-3.8.8-1.el6.noarch.rpm

#Add signing key
sudo rpm --import https://www.rabbitmq.com/rabbitmq-signing-key-public.asc
#Install rabbitmq-server
sudo rpm -Uvh rabbitmq-server-3.8.8-1.el6.noarch.rpm
#Start RabbitMQ
sudo systemctl start rabbitmq-server
#Automatically start RabbitMQ at boot time
sudo systemctl enable rabbitmq-server
