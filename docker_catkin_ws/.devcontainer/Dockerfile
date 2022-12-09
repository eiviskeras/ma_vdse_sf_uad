FROM ros:melodic-ros-base

RUN apt-get update && apt-get install -q -y \
 python-catkin-tools python-pip ros-melodic-nmea-navsat-driver ros-melodic-velodyne ros-melodic-gps-common \
 ros-melodic-camera-info-manager ros-melodic-image-transport ros-melodic-cv-bridge ros-melodic-image-pipeline \
 libdc1394-22-dev python-rosinstall-generator vim curl wget
RUN rm -rf /var/lib/apt/lists # good practice.

RUN git clone https://github.com/pyenv/pyenv.git ~/.pyenv && \
 echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc && \
 echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc && \
 echo 'if command -v pyenv 1>/dev/null 2>&1; then\n eval "$(pyenv init --path)"\nfi' >> ~/.bashrc

RUN echo 'source /opt/ros/$ROS_DISTRO/setup.bash' >> /root/.bashrc
