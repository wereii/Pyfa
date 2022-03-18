## Pyfa As AppImage

Needed for building:

- Linux distro, currently tested is Arch/Manjaro
- make, curl
- GTK3 libraries are needed (`gtk3` for Arch based, `libgtk-3-dev` for debian based)
- patience, first time building wxPython can take about 10 minutes 

Steps:

```sh
cd appimage
mkdir build
cd build
make -f ../Makefile 
```

If everything goes alright, build directory should contain `Pyfa-x86_64.AppImage`.


### Building in docker

- From root of this repo run: 
  ```sh
  sudo docker build . -t pyfabuilder
  sudo docker run --rm -it --cap-add SYS_ADMIN --device /dev/fuse -v "`pwd`/appimage:/pyfa/appimage" pyfabuilder
  ```
The --cap.. flag and mounts are required due to appimagebuilder using fuse (your system needs to have working fuse)
