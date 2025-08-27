# Build_Buddy
Friendly bash scripts to automate building and compiling software projects.





### Software list



## Build Environment

| NO| Kernel            |
|---|-------------------|
| 0| 6.1.0-29-amd64    |


| NO| Debian Version |
|---|----------------|
| 12| Debian 12      |




| Name       | Version | Kernel   | Debian Version | Dependencies                                               | Build Script          | Tested (Y/N) | Description                                                                 |
| ---------- | ------- | -------- | -------------- | ---------------------------------------------------------- | --------------------- | ------------ | --------------------------------------------------------------------------- |
| SolveSpace | 3.1     | 0 | 12      | `cmake`, `make`, `g++`, `gtkmm-3.0`, `eigen3`              | `build_solvespace.sh` |             | Parametric 2D/3D CAD software. Requires submodules (`extlib`) when cloning. |
| GIMP       | 2.10.34 | 0 | 12      | `meson`, `ninja`, `gtk+3.0`, `gegl`, `babl`                | `build_gimp.sh`       |             | Open-source image editor. Needs large dependency tree.                      |
| OpenCV     | 4.9.0   | 0 | 12      | `cmake`, `make`, `g++`, `python3-dev`, `libgtk-3-dev`      | `build_opencv.sh`     |             | Computer vision & machine learning library.                                 |
| FFmpeg     | 6.1     | 0 | 12      | `yasm`, `nasm`, `libx264-dev`, `libx265-dev`, `libvpx-dev` | `build_ffmpeg.sh`     |             | Audio/video encoding/decoding framework.                                    |
| Blender    | 4.0     | 0 | 12      | `cmake`, `ninja`, `g++`, `python3`, `libx11-dev`           | `build_blender.sh`    |             | 3D modeling, rendering & animation suite.                                   |





SolveSpace 
```
sudo apt install solvespace
```
