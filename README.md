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
| SolveSpace | 3.1     | 0 | 12      |  -  | `build_solvespace.sh` |             | Parametric 2D/3D CAD software. Requires submodules (`extlib`) when cloning. |
| GIMP       | 2.10.34 | 0 | 12      |  -  | `build_gimp.sh`       |             | Open-source image editor. Needs large dependency tree.                      |
| OpenCV     | 4.9.0   | 0 | 12      |  -  | `build_opencv.sh`     |             | Computer vision & machine learning library.                                 |
| FFmpeg     | 6.1     | 0 | 12      |  -  | `build_ffmpeg.sh`     |             | Audio/video encoding/decoding framework.                                    |
| Blender    | 4.0     | 0 | 12      |  -  | `build_blender.sh`    |             | 3D modeling, rendering & animation suite.                                   |





SolveSpace 
```
sudo apt install solvespace
```
