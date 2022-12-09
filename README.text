# Dockerfile to build and run the utbm-dataset workspace in ROS melodic
This Dockerfile is based on the tutorial in [Amirdawesh](https://amirdarwesh.com/posts/2019/09/13/ROS-Docker-Vscode).
The source-folders are obtained and installed according to the tutorial [utbm-robocar-dataset](https://github.com/epan-utbm/utbm_robocar_dataset/tree/baselines/launch).

1. Move bove folders (docker_catkin_ws/docker_sick_ws) in the repository to your home-directory (/home/$USER/).
	1.1 (optional) Modify the wget line in /docker_catkin_ws/src/docker-setup.bash to fetch your desired .bag-file from the utbm-dataset. 
2. Install vs-code with CMake, CMake Tools, Docker, Dev Containers extensions to build the Dockerimage.
3. Open the folder docker_catkin_ws from within vs-code and wait for a prompt to "reload" the container [Amirdawesh](https://amirdarwesh.com/posts/2019/09/13/ROS-Docker-Vscode/). Click on reload.
4. Build the container. Be aware, that when the setup finishes, the container "hangs" itself, because wget fetches the .bag-file.
5. Change your directory into the launch directory of the utbm-dataset.
```	
cd /catkin_ws/src/utbm_robocar_dataset/launch
```
6. Launch the sensors and your .bag-file.
```
roslaunch utbm_dataset.launch.py bag:=/catkin_ws/src/utbm_robocar_dataset/launch/your-bag-file-name.bag
```
