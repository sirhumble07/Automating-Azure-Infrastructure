#!/bin/bash

./deploy-vnet.sh
./deploy-nsg.sh
./deploy-storage.sh
./deploy-vm.sh
./deploy-monitor.sh
./deploy-policy.sh