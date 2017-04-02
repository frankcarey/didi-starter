Creates a docker based starter kit for those working on the Didi challenge.

Requirements
---------
### ahoy (v2)

To install on linux use:
`sudo wget -q https://github.com/ahoy-cli/ahoy/releases/download/2.0.0-beta1/ahoy-bin-`uname -s`-amd64 -O /usr/local/bin/ahoy && sudo chown $USER /usr/local/bin/ahoy && chmod +x /usr/local/bin/ahoy`

try typing `ahoy` in your command line and you should see `ahoy - Creates a configurable cli app for running commands.'

### nvidia-docker
Follow instructions here: https://github.com/NVIDIA/nvidia-docker#ubuntu-distributions and make sure you have your nvidia drivers and docker installed first.

### docker and docker-compose

Best way is to use their repository for ubuntu: https://docs.docker.com/engine/installation/linux/ubuntu/#install-docker


Also, You'll want to setup a docker group with the right privilages so you don't have to type sudo every time.
https://docs.docker.com/engine/installation/linux/linux-postinstall/

### didi challenge data

Download the `Didi-Training-Release-1.tar.gz` dataset and extract it into the ./data subfolder. (don't commit anything in that folder into the repo please) You can also delete the data folder and replace it with a symlink if you need to, just don't commit that change.


Running things with ahoy
===========

Running `ahoy` anywhere within this folder should show you the commands we've got working so far. The commands come from the .ahoy.yml file. Feel free to add more commands as needed.


Issues encountered
-------

need to run our custom Dockerfile to create ros:nvidia and then run that with ahoy desktop.

- Xserver rejects the request if you don't use `xhost +local:root` See http://wiki.ros.org/docker/Tutorials/GUI.  Error shows as:

```
No protocol specified
rqt: cannot 
```

- If you don't use nvidia-docker, I was getting an openGL error related to the swrast driver unless I used nvidia-docker. See https://github.com/openai/gym/issues/509
