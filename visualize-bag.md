Visualizing a Bag file
==================

ROS can store messages in a "bag" file which can be played back, basically resending the to the ROS master. This data can then be processed by a node, or visualized in rviz. This describes how to visualize a bag file with `rviz`.


Make sure your data is in the ./data folder.

## 1. Start a ros docker container

We start it with `bash` so that we can start multiple programs at the same time. (TODO: Make this easier)

`ahoy ros bash`

All the following commands will be typed inside the container.

## 2. Install velodyne stack and start the pointcloud node

TODO: Add these things to the Dockerfile

```
apt-get update &&
apt-get install ros-indigo-velodyne &&
rosrun velodyne_pointcloud cloud_node &
```

## 3. Start rviz

In order to view a bag file, you should first start rviz.

`rosrun rviz rviz default.rvizi &`

`default.rviz` should be setup with the proper topics to show the lidar data and the video.

## 4. Play a bag file with rosbag

`rosbag play data/approach_1.bag`

As soon as you start the playback, you should see the data playing in rviz.

<img src="http://i.imgur.com/z4RQ2lY.png" height=200px>
