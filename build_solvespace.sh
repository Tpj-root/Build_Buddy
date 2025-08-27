#!/bin/bash
# ==========================================================
# Build Script for SolveSpace 3.1 on Debian GNU/Linux 12
# OS   : Debian GNU/Linux 12 (bookworm) x86_64
# Kernel: 6.1.0-29-amd64
# ==========================================================
# TUTORIAL: DRAWING AN ANGLE BRACKET
#
# https://solvespace.com/bracket.pl
# ==========================================================

# --- Step 1: Install the prebuilt .deb package (easy method)
# This installs SolveSpace directly from Debian’s official repository.
# If this works for you, you don’t need to build from source.
# sudo apt install -y solvespace

# ==========================================================
# --- Step 2: Install all build dependencies (for source build)
# These are needed only if you want to compile SolveSpace yourself.
# build-essential -> compiler + make
# cmake           -> build system generator
# zlib1g-dev      -> compression library
# libpng-dev      -> PNG image support
# libcairo2-dev   -> vector graphics rendering
# libfreetype6-dev-> font rendering
# libjson-c-dev   -> JSON parsing
# libfontconfig1-dev -> font configuration
# libgtkmm-3.0-dev   -> GTK+ C++ bindings
# libpangomm-1.4-dev -> text layout
# libgl-dev / libglu-dev -> OpenGL support
# libspnav-dev    -> 3Dconnexion SpaceNavigator support
sudo apt install -y git build-essential cmake zlib1g-dev libpng-dev \
    libcairo2-dev libfreetype6-dev libjson-c-dev \
    libfontconfig1-dev libgtkmm-3.0-dev libpangomm-1.4-dev \
    libgl-dev libglu-dev libspnav-dev

# ==========================================================
# --- Step 3: Clone SolveSpace source code from GitHub
# We use --recursive to also pull submodules (extlib/ libraries).
git clone https://github.com/solvespace/solvespace.git
cd solvespace

# --- Step 4: Initialize and update git submodules
# Required because SolveSpace uses external libraries in extlib/.
git submodule update --init --recursive

# ==========================================================
# --- Step 5: Create a build directory and enter it
# This keeps build files separate from source code.
mkdir build && cd build

# --- Step 6: Run CMake to configure the build
# -DCMAKE_BUILD_TYPE=Release -> enables optimizations
# -DENABLE_OPENMP=ON         -> enables multi-threading
cmake .. -DCMAKE_BUILD_TYPE=Release -DENABLE_OPENMP=ON

# --- Step 7: Build SolveSpace
# Default 'make' compiles with a single thread.
make

# --- Optional: Faster build using all CPU cores
# make -j$(nproc)

# ==========================================================
# End of script
# After build completes, you can run the SolveSpace binary from:
#   ./bin/solvespace
# ==========================================================
