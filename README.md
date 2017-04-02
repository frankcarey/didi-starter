Creates a docker based starter kit for those working on the Didi challenge.


Issues encountered
=============

need to run our custom Dockerfile to create ros:nvidia and then run that with ahoy desktop.

- Xserver rejects the request if you don't use `xhost +local:root` See http://wiki.ros.org/docker/Tutorials/GUI.  Error shows as:

```
No protocol specified
rqt: cannot 
```

- If you don't use nvidia-docker, I was getting an openGL error related to the swrast driver unless I used nvidia-docker. See https://github.com/openai/gym/issues/509
