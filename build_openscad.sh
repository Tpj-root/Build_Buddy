#!/bin/bash
# ==========================================================
# Build Script for openscad on Debian GNU/Linux 12
# OS   : Debian GNU/Linux 12 (bookworm) x86_64
# Kernel: 6.1.0-29-amd64
# ==========================================================
# TUTORIAL:  
# https://www.youtube.com/watch?v=5PzALm4udWA&list=PLEvJVXu3VfGMSOdpA0jrGRzoM7NlNOl5s&index=1
# ==========================================================

# --- Step 1: Install the prebuilt .deb package (easy method)
# This installs openscad directly from Debian’s official repository.
# If this works for you, you don’t need to build from source.
# sudo apt install -y openscad

# ==========================================================
# --- Step 2: Install all build dependencies (for source build)
# These are needed only if you want to compile openscad yourself.
# build-essential -> compiler + make
sudo apt install libqscintilla2-qt5-dev libopencsg-dev libzip-dev bison flex

# ==========================================================
# --- Step 3: Clone openscad source code from GitHub
# We use --recursive to also pull submodules (extlib/ libraries).
git clone https://github.com/openscad/openscad.git
cd openscad

# --- Step 4: Initialize and update git submodules
# Required because openscad uses external libraries in extlib/.
git submodule update --init --recursive

# ==========================================================
# --- Step 5: Create a build directory and enter it
# This keeps build files separate from source code.
mkdir build && cd build

# --- Step 6: Run CMake to configure the build
# -DCMAKE_BUILD_TYPE=Release -> enables optimizations
# -DENABLE_OPENMP=ON         -> enables multi-threading
cmake .. -DCMAKE_BUILD_TYPE=Release -DENABLE_OPENMP=ON

# --- Step 7: Build openscad
# Default 'make' compiles with a single thread.
make

# --- Optional: Faster build using all CPU cores
# make -j$(nproc)

# ==========================================================
# End of script
# After build completes, you can run the openscad binary from:
#   ./bin/openscad
# ==========================================================
