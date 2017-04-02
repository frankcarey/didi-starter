# Based on instructions for hardware acceleration from http://wiki.ros.org/docker/Tutorials/Hardware%20Acceleration 
FROM osrf/ros:indigo-desktop-full
# nvidia-docker hooks
LABEL com.nvidia.volumes.needed="nvidia_driver"
ENV PATH /usr/local/nvidia/bin:${PATH}
ENV LD_LIBRARY_PATH /usr/local/nvidia/lib:/usr/local/nvidia/lib64:${LD_LIBRARY_PATH}
