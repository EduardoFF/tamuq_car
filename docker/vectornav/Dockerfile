FROM ros:melodic-ros-base-bionic

#RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; rosdep init; rosdep update'

RUN apt-get update && apt-get install -y ros-melodic-tf2-*

RUN mkdir -p /catkin_ws/src
RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_init_workspace /catkin_ws/src'

RUN git clone  https://github.com/dawonn/vectornav.git /catkin_ws/src/vectornav


RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_make -DCMAKE_BUILD_TYPE=Release -j1 -C /catkin_ws'

RUN /bin/sed -i \
    '/source "\/opt\/ros\/$ROS_DISTRO\/setup.bash"/a source "\/catkin_ws\/devel\/setup.bash"'\
    /ros_entrypoint.sh

ENTRYPOINT ["/ros_entrypoint.sh"]
