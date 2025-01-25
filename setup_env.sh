#!/bin/bash

# Append to PATH
export PATH="/home/workspace/accel-sim-framework/gpgpu-sim/bin:/usr/local/cuda-11.8/bin:/home/workspace/accel-sim-framework/bin:/usr/local/cuda-11.8/bin:/usr/local/cuda-11.8/bin:/root/.cargo/bin:/lsiopy/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/nvim-linux64/bin:$PATH"

# Set other environment variables
export CUDA_INSTALL_PATH="/usr/local/cuda-11.8"
export ACCELSIM_SETUP_ENVIRONMENT_WAS_RUN="1"
export ACCELSIM_ROOT="/home/workspace/accel-sim-framework"
export GPGPUSIM_REPO="https://github.com/jakeflasher/gpgpu-sim_distribution.git"
export GPGPUSIM_BRANCH="dev"
export ACCELSIM_CONFIG="release"
export GPGPUSIM_SETUP_ENVIRONMENT_WAS_RUN="1"
export GPGPUSIM_ROOT="/home/workspace/accel-sim-framework/gpgpu-sim"
export CUDA_VERSION_NUMBER="11080"
export PTX_SIM_USE_PTX_FILE="1.ptx"
export PTX_SIM_KERNELFILE="_1.ptx"
export CUOBJDUMP_SIM_FILE="jj"
export GPGPUSIM_CONFIG="gcc-13.3.0/cuda-11080/release"

# Append to LD_LIBRARY_PATH
export LD_LIBRARY_PATH="/home/workspace/accel-sim-framework/gpgpu-sim/lib/gcc-13.3.0/cuda-11080/release:/home/workspace/accel-sim-framework/lib/gcc-13.3.0/cuda-11080/release:/home/workspace/accel-sim-framework/lib/gcc-13.3.0/cuda-11080/release:/home/workspace/accel-sim-framework/lib/gcc-13.3.0/cuda-11080/release:$LD_LIBRARY_PATH"

# Set PTXAS CUDA install path
export PTXAS_CUDA_INSTALL_PATH="/usr/local/cuda-11.8"

# Append to PYTHONPATH
export PYTHONPATH="/home/workspace/accel-sim-framework/build/release:/home/workspace/accel-sim-framework/build/release:$PYTHONPATH"

# Set GPGPUSIM Power Model path
export GPGPUSIM_POWER_MODEL="/home/workspace/accel-sim-framework/gpgpu-sim/src/accelwattch/"

# Print success message
echo "Environment variables have been set up for temporary work."

echo "GPGPUSIM_SETUP_ENVIRONMENT_WAS_RUN=1"
echo "ACCELSIM_SETUP_ENVIRONMENT_WAS_RUN=1"
# make -C gpu-simulator -j
gpu-simulator/bin/release/accel-sim.out -trace /home/tesla_v100-traces/rodinia_2.0-ft/11.0/backprop-rodinia-2.0-ft/4096___data_result_4096_txt/traces/kernelslist.g -config ./gpgpu-sim/configs/tested-cfgs/SM7_QV100/gpgpusim.config -config ./gpu-simulator/configs/tested-cfgs/SM7_QV100/trace.config
