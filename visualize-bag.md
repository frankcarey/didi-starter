Visualizing a Bag file
==================

ROS can store messages in a "bag" file which can be played back, basically resending the to the ROS master. This data can then be processed by a node, or visualized in rviz. This describes how to visualize a bag file with `rviz`.


Make sure your data is in the ./data folder.

## 0. Build the ros:nvidia image

This uses docker to build the image we need for the next steps.

`ahoy build`


## 1. Start a ros docker container

We start it with `bash` so that we can start multiple programs at the same time. (TODO: Make this easier)

`ahoy ros bash`

All the following commands will be typed inside the container.

## 2. Start the velodyne pointcloud node

Note: redo step 0 above if you built it before April 4th. (it's been updated to simplify this step)

```
rosrun velodyne_pointcloud cloud_node &
```

## 3. Start roscore and rviz

In order to view a bag file, you should first start rviz.

`roscore & rosrun rviz rviz default.rviz &`

`default.rviz` should already be setup for you with the proper topics to show the LIDAR data and the video.

## 4. Play a bag file with rosbag

`rosbag play data/approach_1.bag`

As soon as you start the playback, you should see the data playing in rviz.

<img src="http://i.imgur.com/z4RQ2lY.png" height=200px>
