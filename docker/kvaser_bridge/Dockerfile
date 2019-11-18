FROM ros:melodic-ros-base-bionic

MAINTAINER Eduardo Feo Flushing efeoflus@andrew.cmu.edu


COPY install.sh /install.sh
COPY linuxcan.tar.gz /linuxcan.tar.gz

RUN apt-get update
RUN sudo sh -C '/install.sh'
# clean apt cache
ENTRYPOINT ["/ros_entrypoint.sh"]
CMD ["bash"]