 #!/bin/bash

#########################################
# Installing Optimized Opencv 4.0.0, Tensorflow Lite and Dlib and necessary packages on RaspberryPi (Stretch)

# Created by Akhtar Ali

#########################################

 ## NOTE

 # Increase your swap file size (Swap files, or swap space, is space on a hard disk/memory card used as virtual memory as an extension to a system’s real memory (RAM))
 # sudo nano /etc/dphys-swapfile
 # from CONF_SWAPSIZE=100 to CONF_SWAPSIZE=1024
 # sudo /etc/init.d/dphys-swapfile stop
 # sudo /etc/init.d/dphys-swapfile start
 
 

 # Installing pre-compiled binary of Pre-released & Stable OpenCV (4.0.0) along with TBB
 
 sudo apt-get -y update && sudo apt-get -y upgrade
 sudo sed -i 's/CONF_SWAPSIZE=100/CONF_SWAPSIZE=1024/g' /etc/dphys-swapfile
 sudo /etc/init.d/dphys-swapfile stop
 sudo /etc/init.d/dphys-swapfile start
 sudo apt-get -y purge wolfram-engine
 sudo apt-get -y purge libreoffice*
 sudo apt-get -y clean
 sudo apt-get -y autoremove
 sudo apt -y update
 sudo apt -y upgrade
 sudo apt-get -y remove x264 libx264-dev
 sudo apt-get -y install build-essential checkinstall cmake pkg-config yasm
 sudo apt-get -y install git gfortran
 sudo apt-get -y install libjpeg8-dev libjasper-dev libpng12-dev
 sudo apt-get -y install libtiff5-dev
 sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libdc1394-22-dev
 sudo apt-get -y install libxine2-dev libv4l-dev
 cd /usr/include/linux
 sudo ln -s -f ../libv4l1-videodev.h videodev.h
 cd $cwd
 sudo apt-get -y install libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev
 sudo apt-get -y install libgtk2.0-dev libtbb-dev qt5-default
 sudo apt-get -y install libatlas-base-dev
 sudo apt-get -y install libmp3lame-dev libtheora-dev
 sudo apt-get -y install libvorbis-dev libxvidcore-dev libx264-dev
 sudo apt-get -y install libopencore-amrnb-dev libopencore-amrwb-dev
 sudo apt-get -y install libavresample-dev
 sudo apt-get -y install x264 v4l-utils
 sudo apt-get -y install libilmbase-dev
 sudo apt-get -y install libopenexr-dev
 sudo apt-get -y install libgstreamer1.0-dev
 sudo apt-get -y install libqtgui4
 sudo apt-get -y  update
 sudo apt-get install -y libssl-dev libcurl4-openssl-dev liblog4cplus-1.1-9 liblog4cplus-dev
 sudo apt-get -y  update
 sudo apt-get -y install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev gstreamer1.0-plugins-base-apps
 sudo apt-get -y install libprotobuf-dev protobuf-compiler
 sudo apt-get -y install libgoogle-glog-dev libgflags-dev
 sudo apt-get -y install libgphoto2-dev libeigen3-dev libhdf5-dev doxygen
 sudo apt-get -y install libopencv-dev
 sudo apt-get -y install gstreamer1.0-tools
 
 # Install Python Libraries
 sudo apt-get -y install python3-dev python3-pip
 sudo -H pip3 install -U pip numpy
 sudo apt-get -y install python3-testresources
 # Install Two additional libraries for Optimized Opencv with TBB
 wget http://www.leptonica.org/source/leptonica-1.78.0.tar.gz
 tar xvf leptonica-1.78.0.tar.gz
 cd leptonica-1.78.0
 ./configure
 make -j4
 sudo make install
 sudo ldconfig
 cd $cwd
 wget https://github.com/tesseract-ocr/tesseract/archive/4.0.0.zip -O tesseract-4.0.0.zip
 unzip tesseract-4.0.0.zip && mv tesseract-4.0.0 tesseract
 cd tesseract
 ./autogen.sh
 ./configure
  make -j4
 sudo make install
 sudo ldconfig
 cd $cwd
 # Download .deb File For Optimized Opencv with TBB_Raspberry_pi And Some Prerequisite Libraries Optimized Opencv
 git clone https://github.com/abhiTronix/OpenCV_Raspberry_pi_TBB
 cd OpenCV_Raspberry_pi_TBB
 sudo dpkg -i opencv_4.0.0-pre-demo_armhf.deb
 sudo ldconfig
 
  

 # Installing Prebuilt binary for TensorflowLite's standalone installer. Fast tuning with MultiTread. For RaspberryPi. A very lightweight installer 

 # For Python3.5 - Stretch

 sudo apt-get -y update
 sudo apt-get -y upgrade

 sudo apt install swig libjpeg-dev zlib1g-dev python3-dev python3-numpy unzip
 wget https://github.com/PINTO0309/TensorflowLite-bin/raw/master/1.14.0/tflite_runtime-1.14.0-cp35-cp35m-linux_armv7l.whl
 sudo pip3 install --upgrade tflite_runtime-1.14.0-cp35-cp35m-linux_armv7l.whl

 # Python3.7 - Buster
 
 #sudo apt install swig libjpeg-dev zlib1g-dev python3-dev python3-numpy unzip
 #wget https://github.com/PINTO0309/TensorflowLite-bin/raw/master/1.14.0/tflite_runtime-1.14.0-cp37-cp37m-linux_armv7l.whl
 #sudo pip3 install --upgrade tflite_runtime-1.14.0-cp37-cp37m-linux_armv7l.whl


 # Installing  dlib from source  on a Raspberry Pi

 sudo apt-get -y update
 sudo apt-get -y install build-essential cmake
 sudo apt-get -y install libopenblas-dev liblapack-dev libatlas-base-dev
 sudo apt-get -y install libx11-dev libgtk-3-dev
 git clone https://github.com/davisking/dlib.git
 cd dlib
 sudo python3 setup.py install --compiler-flags "-mfpu=neon"
 cd $cwd
 sudo sed -i 's/CONF_SWAPSIZE=1024/CONF_SWAPSIZE=100/g' /etc/dphys-swapfile
 sudo /etc/init.d/dphys-swapfile stop
 sudo /etc/init.d/dphys-swapfile start
 
 
 
 
 

 
 
 
 
 

 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

 
 
  
