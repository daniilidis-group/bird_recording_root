# UPenn Bird Recording project root repository

This repository contains the relevant ros packages as submodules.
Tested on Ubuntu 16.04 LTS / ROS kinetic.

Maintainer: Bernd Pfrommer (bernd.pfrommer@gmail.com)

## Installation

Prerequisite: working installation of ROS kinetic
(http://wiki.ros.org/kinetic/Installation/Ubuntu). If this is a new
user, don't forget to run "rosdep update" and update the .bashrc file.

If you have never used ROS before on this machine, do this:

	rosdep update
	echo "source /opt/ros/kinetic/setup.bash" >> ~/.bashrc
	source ~/.bashrc

Install GTSAM from the ppa:

    sudo apt-add-repository ppa:bernd-pfrommer/gtsam
    sudo apt update
    sudo apt install gtsam

You may also need the ``catkin build`` command, and gstreamer for
audio recording:

    sudo apt install python-catkin-tools
	sudo apt install libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
    sudo apt install libfftw3-dev

Download and compile all bird code:

	cd Documents
	git clone https://github.com/daniilidis-group/birds.git
	cd birds
	./update_submodules.bash
	catkin config -DCMAKE_BUILD_TYPE=Release
	catkin build -c

On Ubuntu 16.04, you will likely get an error for the ``ffmpeg_image_transport`` package. That is because
the version of FFMPeg is outdated, so you need to
[build your own version for it.](https://github.com/daniilidis-group/ffmpeg_image_transport/blob/master/docs/compile_ffmpeg.md)

## Using

Overlay the ros packages:

    cd ~/Documents/birds
	. devel/setup.bash
	roscd bird_recording/launch

and see the bird_recording package for further instructions

