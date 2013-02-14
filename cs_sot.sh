#!/bin/bash

# This script aims at downloading and compile all the packages needed to build the SoT

# -----------------------------------------------------
# -- Please customize this part to adapt to your setup.
# -----------------------------------------------------

# --  SoT PATHS
# Mandatory infomations

#source path.
export SOURCE_DIR=/home/username/devel-src/SoT/

# installation path of the sot.
export SOT_ROOT=/home/username/devel/SoT/

# the eclipse repositories must be built outside of the repositories.
# please enter the name of the main folder (it will be in SOURCE_DIR/ECLIPSE_FOLDER)
export ECLIPSE_FOLDER=eclipse-python

export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$SOT_ROOT/lib/pkgconfig

# define the path to boost if not automatically found
# export BOOST_ROOT=/opt/boost/boost_1_40_0/

# define the path to eigen if not automatically found
# export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:"/home/${user}/devel/eigen/share/pkgconfig"

# pkg-config dependencies



# Indicate the path to python and sphinx if needed.
#for python 2.6
# export EXTRA_CMAKE_FLAGS="-DPYTHON_EXECUTABLE=/usr/bin/python   -DPYTHON_LIBRARY=/usr/lib/libpython2.6.so -DPYTHON_INCLUDE_DIRS=/usr/include  -DSPHINX_BUILD=/usr/bin/sphinx-build"

#for python 2.7
#export EXTRA_CMAKE_FLAGS="-DPYTHON_EXECUTABLE=/usr/bin/python2.7 -DPYTHON_LIBRARY=/usr/lib/libpython2.7.so -DPYTHON_INCLUDE_DIRS=/usr/include -DSPHINX_BUILD=/usr/bin/sphinx-build"


# -----------------------------------------------------
# -- End of the customization part
# -----------------------------------------------------

###########################################
PREV_PWD=`pwd`

cd 	$PREV_PWD
./packages_list.sh    $@ release

