# Taken from https://autonomoustuff.atlassian.net/wiki/spaces/RW/pages/17475947/Driver+Pack+Installation+or+Upgrade+Instructions

#apt update && sudo apt install apt-transport-https
#sh -c 'echo "deb [trusted=yes] https://s3.amazonaws.com/autonomoustuff-repo/ $(lsb_release -sc) main" > /etc/apt/sources.list.d/autonomoustuff-public.list'
apt-get install -y apt-utils

cd /home/root
tar xfvz linuxcan.tar.gz
cd linuxcan
make canlib
make -C canlib install
apt-get install -y ros-melodic-can-msgs ros-melodic-roslint

mkdir -p /home/root/catkin_ws/src
cd /home/root/catkin_ws/src
git clone https://github.com/astuff/kvaser_interface.git

/bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_init_workspace /home/root/catkin_ws/src; catkin_make -C /home/root/catkin_ws;'
/bin/sed -i \
    '/source "\/opt\/ros\/$ROS_DISTRO\/setup.bash"/a source "\/home\/root\/catkin_ws\/devel\/setup.bash"' \
    /ros_entrypoint.sh


