# Docker file for GNU Octave

GNU Octave is available at https://www.gnu.org/software/octave/

# Instructions

Build the image by
```
docker build . --tag octave-image
```
Run the container by
```
docker run -it -v `pwd`:/root octave-image bash
```
To enable the GUI, try running the container by
```
docker run -it -v `pwd`:/root --volume /tmp/.X11-unix:/tmp/.X11-unix --env DISPLAY=$DISPLAY --volume $HOME/.Xauthority:/root/.Xauthority --hostname=$HOST octave-image bash
```
