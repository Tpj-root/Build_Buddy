Building for Linux


OS: Debian GNU/Linux 12 (bookworm) x86_64 
Kernel: 6.1.0-29-amd64 




SolveSpace 3.1
```
sudo apt install solvespace
```








```

sudo apt install git build-essential cmake zlib1g-dev libpng-dev \
            libcairo2-dev libfreetype6-dev libjson-c-dev \
            libfontconfig1-dev libgtkmm-3.0-dev libpangomm-1.4-dev \
            libgl-dev libglu-dev libspnav-dev




git clone https://github.com/solvespace/solvespace.git
cd solvespace
git submodule update --init --recursive
mkdir build && cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -DENABLE_OPENMP=ON
make

or 
make -j$(nproc)




```