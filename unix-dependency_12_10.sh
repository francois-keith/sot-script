#!/bin/bash

# install the external dependencies of the SoT

# general dependencies
sudo apt-get install cmake g++ doxygen gfortran
# lapack dependencies
sudo apt-get install liblapack3gf libblas3GF liblapack-dev libblas-dev
# boost dependencies
sudo apt-get install libboost1.49-dev libboost-thread1.49-dev libboost-date-time1.49-dev libboost-filesystem1.49-dev libboost-program-options1.49-dev libboost-serialization1.49-dev libboost-signals1.49-dev libboost-system1.49-dev libboost-test1.49-dev
#  boost-build 
# pytohn 2.6 dependencies
sudo apt-get install python2.7-dev python-numpy python-sphinx python-opengl python-setuptools python-yaml

# download http://sourceforge.net/projects/simpleparse/files/simpleparse/2.1.1a2/
# install it using 
