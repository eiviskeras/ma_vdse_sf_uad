#Install rosbags-convert (Used to convert from .bag to .db3) along with python 3.10 (Required) and dependencies for cameras in utbm-dataset
source ~/.bashrc
pyenv install 3.10.0 && pyenv global 3.10.0 
apt-get install -q -y python-pip && pip install rosbags pyyml rospkg 
#Setup catkin-workspace and install utbm-dataset with sensors
rosdep install -y -r --from-path /catkin_ws/
cd /catkin_ws
catkin init
catkin_make
echo 'source /catkin_ws/devel/setup.bash' >> ~/.bashrc
cp -a /catkin_ws/src/utbm_robocar_dataset/camera_info/. /root/.ros
#Setup sick-lidar drivers
cd /sick_ws
catkin_make_isolated --install -DCMAKE_BUILD_TYPE=Release
echo 'source /sick_ws/install_isolated/setup.bash' >> ~/.bashrc 
#Install preferred dataset in launch directory
wget -P /catkin_ws/src/utbm_robocar_dataset/launch --quiet "https://drive.utbm.fr/s/f6mrskiZagqNo8G/download/utbm_robocar_dataset_20180713_noimage.bag"


