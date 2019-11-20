FROM ros:kinetic-ros-base

MAINTAINER Eduardo Feo Flushing efeoflus@andrew.cmu.edu


RUN apt-get update
RUN apt-get install -y ros-kinetic-pacmod ros-kinetic-pacmod-game-control
# clean apt cache
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]