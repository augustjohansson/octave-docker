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
Install octave in the container by
```
git clone https://github.com/gnu-octave/octave.git
./bootstrap
./configure
make -j4 install
```
