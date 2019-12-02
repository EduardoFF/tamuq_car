FROM stereolabs/zed:ubuntu1804-cuda10.0-zed2.8-ros

#RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; rosdep init; rosdep update'

RUN mkdir -p ~/catkin_ws/src
RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_init_workspace ~/catkin_ws/src'

RUN git clone  https://github.com/stereolabs/zed-ros-wrapper.git ~/catkin_ws/src/zed-ros-wrapper


RUN /bin/bash -c '. /opt/ros/melodic/setup.bash; catkin_make -DCMAKE_BUILD_TYPE=Release -j1 -C ~/catkin_ws'

USER root
RUN useradd --no-log-init -r -g ros video
USER ros
#RUN /bin/sed -i \
#    '/source "\/opt\/ros\/$ROS_DISTRO\/setup.bash"/a source "\/home\/ros\/catkin_ws\/devel\/setup.bash"'\
#    /ros_entrypoint.sh

#ENTRYPOINT ["/ros_entrypoint.sh"]
