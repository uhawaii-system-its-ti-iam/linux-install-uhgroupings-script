#!/bin/bash

#install everyting to get ready to use/run uhgroupings

echo
echo "================================================================"
echo updating
echo "================================================================"
echo
sudo apt update



echo
echo "================================================================"
echo upgrading
echo "================================================================"
echo
yes | sudo apt upgrade



echo
echo "================================================================"
echo installing vim
echo "================================================================"
echo
yes | sudo apt install vim



echo
echo "================================================================"
echo installing jdk
echo "================================================================"
echo
yes | sudo apt install openjdk-8-jdk



echo
echo "================================================================"
echo installing maven
echo "================================================================"
echo
yes | sudo apt install maven



echo
echo "================================================================"
echo installing git
echo "================================================================"
echo
yes | sudo apt install git



echo
echo "================================================================"
echo making ~/workspace directory
echo "================================================================"
echo
mkdir ~/workspace



echo
echo "================================================================"
echo installing uh-groupings-ui into ~/workspace/uhgroupings
echo "================================================================"
echo
cd ~/workspace
git clone https://github.com/uhawaii-system-its-ti-iam/uhgroupings.git
cd ~/workspace/uhgroupings
git pull



echo
echo "================================================================"
echo installing mvn dependencies and running tests for uhgroupings
echo "================================================================"
echo
mvn clean test



echo
echo "================================================================"
echo installing uh-groupings-api into ~/workspace/uh-groupings-api
echo "================================================================"
echo
cd ~/workspace
git clone https://github.com/uhawaii-system-its-ti-iam/uh-groupings-api.git
cd ~/workspace/uh-groupings-api
git pull



echo
echo "================================================================"
echo installing mvn dependencies and running tests for uh-groupings-api
echo "================================================================"
echo
mvn clean test


