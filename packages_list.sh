#!/bin/bash
# List the package required to compute a small example of the stack of tasks.
. ./common_sot.sh

# Go to root.
if ! [ -d ${SOURCE_DIR} ]; then 
  mkdir -p ${SOURCE_DIR}

  #check if the folder has been created
  if ! [ -d ${SOURCE_DIR} ]; then 
    echo 'Unable to create repository ' ${SOURCE_DIR}
    exit -1
  fi
fi


cd ${SOURCE_DIR}
echo ${SOURCE_DIR}

# Romeo model
GitHandling   "romeo-sot.git" https://gforge.inria.fr/git/romeo-sot   master
BuildHandling "romeo-sot.git";

# # Install jrlMathTools: fast implementation for small matrices
GitHandling   jrl-mathtools https://github.com/jrl-umi3218 master
BuildHandling jrl-mathtools;

# # Install jrl-mal: matrix abstract layer to allow testing with boost::matrix or eigen
GitHandling   jrl-mal https://github.com/jrl-umi3218 master
BuildHandling jrl-mal;

# # Install abstract-robot-dynamics: abstract definition of a robot and a humanoid robot
GitHandling   abstract-robot-dynamics https://github.com/laas master
BuildHandling abstract-robot-dynamics;

# # Install jrl-dynamics: implementation of abstract-robot-dynamics
GitHandling   jrl-dynamics https://github.com/jrl-umi3218           master
BuildHandling jrl-dynamics;

# Install jrl-walkgen: generation of walk pattern
GitHandling   jrl-walkgen https://github.com/jrl-umi3218           topic/rc-v3.1.4
BuildHandling jrl-walkgen ;

# Install dynamic-graph: graph structure for entities and signals
GitHandling   dynamic-graph https://github.com/jrl-umi3218           master
BuildHandling dynamic-graph;

# Install dynamic-graph-python: python bridge for dynamic-graph (or dg)
GitHandling   dynamic-graph-python https://github.com/jrl-umi3218           master
BuildHandling dynamic-graph-python;

# Install sot-core: defines basic entities: feature, task, gain...
GitHandling   sot-core https://github.com/jrl-umi3218           topic/sot-dyninv-binding
BuildHandling sot-core;

# Install sot-dynamic: bridge the sot with jrl-dynamics: integrates humanoid robot
GitHandling   sot-dynamic https://github.com/jrl-umi3218        master
BuildHandling sot-dynamic;

# Install soth: hierarchical solver
GitHandling   soth  https://github.com/laas           master
BuildHandling soth;

# Install sot-dyninv: implementation of the inverse kinematics and dynamics
GitHandling   sot-dyninv https://github.com/laas      master
BuildHandling sot-dyninv;

# Install sot-pattern-generator
GitHandling   sot-pattern-generator https://github.com/jrl-umi3218/      "topic/python"
BuildHandling sot-pattern-generator;

# Install sot-romeo
GitHandling   sot-romeo https://github.com/jrl-umi3218/      "master"
BuildHandling sot-romeo ;

