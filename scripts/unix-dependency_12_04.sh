#!/bin/bash

# install the external dependencies of the SoT

# general dependencies
sudo apt-get install cmake g++ doxygen gfortran
# lapack dependencies
sudo apt-get install liblapack3gf libblas3GF liblapack-dev libblas-dev
# boost dependencies
sudo apt-get install libboost-thread1.46-dev libboost-date-time1.46-dev libboost-filesystem1.46-dev libboost-program-options1.46-dev libboost-serialization1.46-dev libboost-signals1.46-dev libboost-system1.46-dev libboost-test1.46-dev
# python 2.7 dependencies
sudo apt-get install python2.7-dev python-numpy python-sphinx python-opengl python-setuptools python-yaml
# eigen
sudo apt-get install libeigen3-dev

# download http://sourceforge.net/projects/simpleparse/files/simpleparse/2.1.1a2/
# install it using 
