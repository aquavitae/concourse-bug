#!/bin/bash

ip_addr=$(ip addr list eth0 |grep "inet " |cut -d' ' -f6|cut -d/ -f1)
concourse worker --peer-ip $ip_addr 