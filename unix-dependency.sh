#!/bin/bash

# install the external dependencies of the SoT

# general dependencies
sudo apt-get install cmake g++ doxygen gfortran
# lapack dependencies
sudo apt-get install liblapack3gf libblas3GF liblapack-dev libblas-dev
# boost dependencies
sudo apt-get install libboost1.40-dev libboost-thread1.40-dev libboost-date-time1.40-dev libboost-filesystem1.40-dev libboost-program-options1.40-dev libboost-serialization1.40-dev libboost-signals1.40-dev libboost-system1.40-dev libboost-test1.40-dev  boost-build 
# pytohn 2.6 dependencies
sudo apt-get install python2.6-dev python-numpy python-sphinx

