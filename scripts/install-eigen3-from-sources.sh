# get, compile and install Eigen 3.1.2 in lib_path/
src_path=/tmp/
lib_path=~/devel/eigen

cd $src_path
wget http://bitbucket.org/eigen/eigen/get/3.1.2.tar.gz
tar -zxvf 3.1.2.tar.gz

cd eigen-eigen-5097c01bcdc4
mkdir _build
cd _build
cmake -DCMAKE_INSTALL_PREFIX=$lib_path ..
make -s install
make -s -j 3 doc install
cd $src_path
rm 3.1.2.tar.gz

