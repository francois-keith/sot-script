# Customization part: indicate where you want to install robot-viewer
ROBOTVIEWER_PATH=~/devel/robotviewer

currentDir=`pwd`


# Step 1. Installing simpleparse.
cd ~/tmp/

# download simple parse from http://simpleparse.sourceforge.net/
wget http://downloads.sourceforge.net/project/simpleparse/simpleparse/2.1.1a2/SimpleParse-2.1.1a2.tar.gz

tar -xvzf  SimpleParse-2.1.1a2.tar.gz
cd SimpleParse-2.1.1a2/
chmod u+x ./setup.py 
echo 'You need to be root to install SimpleParse'
sudo ./setup.py install

# Step 2. install robothow
cd ~/Download
git clone git://github.com/laas/robot-viewer
cd robot-viewer/
python setup.py install --prefix $ROBOTVIEWER_PATH

# Step 3. copy useful data.
cd $currentDir
if ! [ -d ~/.robotviewer/ ];  then
	mkdir  ~/.robotviewer/
fi;
cp com.wrl  zmp.wrl ground.wrl config ~/.robotviewer/


# Step 4.
echo 
echo 
echo 
echo 'The installation of robotviewer is finished.'
echo 'Please add the following lines to your .bashrc file:'
echo "alias rview='~/devel/robotviewer/bin/robotviewer -s XML-RPC'"
echo 'export PYTHONPATH=$PYTHONPATH:~/devel/robotviewer/lib/python2.7/site-packages/'




