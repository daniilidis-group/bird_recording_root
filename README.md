# UPenn Bird Recording project root repository

This repository contains the relevant ros packages as submodules.
Tested on Ubuntu 16.04 LTS / ROS kinetic.

Maintainer: Bernd Pfrommer (bernd.pfrommer@gmail.com)

## Installation

Prerequisite: working installation of ROS kinetic
(http://wiki.ros.org/kinetic/Installation/Ubuntu). If this is a new
user, don't forget to run "rosdep update" and update the .bashrc file.

Install GTSAM from the ppa:

    sudo apt-add-repository ppa:bernd-pfrommer/gtsam
    sudo apt update
    sudo apt install gtsam

You may also need the ``catkin build`` command:

    sudo apt install python-catkin-tools

Download and compile all bird code:

	cd Documents
	git clone https://github.com/daniilidis-group/birds.git
	cd birds
	./update_submodules.bash
	catkin build

## Using

Overlay the ros packages:

    cd ~/Documents/birds
	. devel/setup.bash
	roscd bird_recording/launch

and see the bird_recording package for further instructions

