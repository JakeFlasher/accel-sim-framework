#!/bin/bash

# ================================
# Script: run_cutlass_profiler.sh
# Description: Executes all cutlass_perf_test commands with predefined parameters.
# ================================

# ======== Configuration ========

# Set the CUTLASS_PROFILER variable to the path where cutlass_perf_test is located
# Replace "/path/to/cutlass_profiler" with the actual path on your system
CUTLASS_PROFILER="/path/to/cutlass_profiler"

# Directory containing the cutlass_perf_test folders
CUTLASS_TEST_DIR="/path/to/cutlass_perf_test"

# Change to the CUTLASS_TEST_DIR directory
cd "$CUTLASS_TEST_DIR" || { echo "Error: Cannot change directory to $CUTLASS_TEST_DIR"; exit 1; }

# ====== Execute Cutlass Profiler Commands ======

# Command 1
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=1024 \
  --k=2560 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=1024, kernels=sgemm_nn"

# Command 2
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=128 \
  --k=2560 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=128, kernels=sgemm_nn"

# Command 3
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=128 \
  --k=2560 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=128, kernels=wmma_gemm_nn"

# Command 4
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=16 \
  --k=2560 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=16, kernels=sgemm_nn"

# Command 5
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=16 \
  --k=2560 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=16, kernels=wmma_gemm_nn"

# Command 6
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=2560 \
  --k=2560 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=2560, kernels=sgemm_nn"

# Command 7
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=32 \
  --k=2560 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=32, kernels=sgemm_nn"

# Command 8
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=32 \
  --k=2560 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=32, kernels=wmma_gemm_nn"

# Command 9
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=512 \
  --k=2560 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=512, kernels=sgemm_nn"

# Command 10
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=64 \
  --k=2560 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=64, kernels=sgemm_nn"

# Command 11
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=64 \
  --k=2560 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=64, kernels=wmma_gemm_nn"

# Command 12
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=2560 \
  --n=7000 \
  --k=2560 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for n=7000, kernels=wmma_gemm_nn"

# Command 13
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=128 \
  --k=4096 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=128, kernels=sgemm_nn"

# Command 14
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=128 \
  --k=4096 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=128, kernels=wmma_gemm_nn"

# Command 15
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=16 \
  --k=4096 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=16, kernels=sgemm_nn"

# Command 16
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=16 \
  --k=4096 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=16, kernels=wmma_gemm_nn"

# Command 17
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=32 \
  --k=4096 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=32, kernels=sgemm_nn"

# Command 18
$CUTLASS_PROfiler/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=32 \
  --k=4096 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=32, kernels=wmma_gemm_nn"

# Command 19
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=4096 \
  --k=4096 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=4096, kernels=sgemm_nn"

# Command 20
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=64 \
  --k=4096 \
  --kernels=sgemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=64, kernels=sgemm_nn"

# Command 21
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=64 \
  --k=4096 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=64, kernels=wmma_gemm_nn"

# Command 22
$CUTLASS_PROFILER/cutlass_perf_test \
  --seed=2020 \
  --dist=0 \
  --m=4096 \
  --n=7000 \
  --k=4096 \
  --kernels=wmma_gemm_nn \
  --iterations=5 \
  --providers=cutlass
echo "Executed command for m=4096, n=7000, kernels=wmma_gemm_nn"

# ====== Completion Message ======
echo "All Cutlass Profiler commands have been executed successfully."
