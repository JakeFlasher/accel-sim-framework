#!/bin/bash

# ================================
# Script: run_deepbench.sh
# Description: Executes all DeepBench application commands with predefined, hard-coded parameters.
# ================================

# ======== Configuration ========

# Set the DEEPBENCH_BIN_PATH variable to the path where DeepBench binaries are located
# Replace "/path/to/deepbench_bin" with the actual path on your system
DEEPBENCH_BIN_PATH="/path/to/deepbench_bin"

# ====== Check if DEEPBENCH_BIN_PATH Exists ======

if [ ! -d "$DEEPBENCH_BIN_PATH" ]; then
  echo "Error: DEEPBENCH_BIN_PATH directory '$DEEPBENCH_BIN_PATH' does not exist."
  exit 1
fi

# ====== Execute DeepBench Commands ======

# -----------------------------
# conv_bench
# -----------------------------
echo "Starting conv_bench commands..."

# Command 1
$DEEPBENCH_BIN_PATH/conv_bench inference half 341 79 32 1 32 10 5 0 0 2 2
echo "Executed conv_bench: inference_half_341_79_32_1_32_10_5_0_0_2_2"

# Command 2
$DEEPBENCH_BIN_PATH/conv_bench inference half 700 161 1 2 32 20 5 0 0 2 2
echo "Executed conv_bench: inference_half_700_161_1_2_32_20_5_0_0_2_2"

# Command 3
$DEEPBENCH_BIN_PATH/conv_bench train half 7 7 832 16 128 5 5 2 2 1 1
echo "Executed conv_bench: train_half_7_7_832_16_128_5_5_2_2_1_1"

# Command 4
$DEEPBENCH_BIN_PATH/conv_bench inference half 341 79 32 2 32 10 5 0 0 2 2
echo "Executed conv_bench: inference_half_341_79_32_2_32_10_5_0_0_2_2"

# Command 5
$DEEPBENCH_BIN_PATH/conv_bench train half 14 14 512 16 512 3 3 1 1 1 1
echo "Executed conv_bench: train_half_14_14_512_16_512_3_3_1_1_1_1"

# Command 6
$DEEPBENCH_BIN_PATH/conv_bench train half 7 7 832 16 256 1 1 0 0 1 1
echo "Executed conv_bench: train_half_7_7_832_16_256_1_1_0_0_1_1"

# Command 7
$DEEPBENCH_BIN_PATH/conv_bench inference half 480 48 1 1 16 3 3 1 1 1 1
echo "Executed conv_bench: inference_half_480_48_1_1_16_3_3_1_1_1_1"

# Command 8
$DEEPBENCH_BIN_PATH/conv_bench train half 7 7 512 8 512 1 1 0 0 1 1
echo "Executed conv_bench: train_half_7_7_512_8_512_1_1_0_0_1_1"

# Command 9
$DEEPBENCH_BIN_PATH/conv_bench inference half 700 161 1 1 32 20 5 0 0 2 2
echo "Executed conv_bench: inference_half_700_161_1_1_32_20_5_0_0_2_2"

# Command 10
$DEEPBENCH_BIN_PATH/conv_bench train half 7 7 512 8 512 3 3 1 1 1 1
echo "Executed conv_bench: train_half_7_7_512_8_512_3_3_1_1_1_1"

# -----------------------------
# conv_bench-tencore
# -----------------------------
echo "Starting conv_bench-tencore commands..."

# Command 1
$DEEPBENCH_BIN_PATH/conv_bench-tencore inference half 341 79 32 1 32 10 5 0 0 2 2
echo "Executed conv_bench-tencore: inference_half_341_79_32_1_32_10_5_0_0_2_2"

# Command 2
$DEEPBENCH_BIN_PATH/conv_bench-tencore inference half 700 161 1 2 32 20 5 0 0 2 2
echo "Executed conv_bench-tencore: inference_half_700_161_1_2_32_20_5_0_0_2_2"

# Command 3
$DEEPBENCH_BIN_PATH/conv_bench-tencore train half 7 7 832 16 128 5 5 2 2 1 1
echo "Executed conv_bench-tencore: train_half_7_7_832_16_128_5_5_2_2_1_1"

# Command 4
$DEEPBENCH_BIN_PATH/conv_bench-tencore inference half 341 79 32 2 32 10 5 0 0 2 2
echo "Executed conv_bench-tencore: inference_half_341_79_32_2_32_10_5_0_0_2_2"

# Command 5
$DEEPBENCH_BIN_PATH/conv_bench-tencore train half 14 14 512 16 512 3 3 1 1 1 1
echo "Executed conv_bench-tencore: train_half_14_14_512_16_512_3_3_1_1_1_1"

# Command 6
$DEEPBENCH_BIN_PATH/conv_bench-tencore train half 7 7 832 16 256 1 1 0 0 1 1
echo "Executed conv_bench-tencore: train_half_7_7_832_16_256_1_1_0_0_1_1"

# Command 7
$DEEPBENCH_BIN_PATH/conv_bench-tencore inference half 480 48 1 1 16 3 3 1 1 1 1
echo "Executed conv_bench-tencore: inference_half_480_48_1_1_16_3_3_1_1_1_1"

# Command 8
$DEEPBENCH_BIN_PATH/conv_bench-tencore train half 7 7 512 8 512 1 1 0 0 1 1
echo "Executed conv_bench-tencore: train_half_7_7_512_8_512_1_1_0_0_1_1"

# Command 9
$DEEPBENCH_BIN_PATH/conv_bench-tencore inference half 700 161 1 1 32 20 5 0 0 2 2
echo "Executed conv_bench-tencore: inference_half_700_161_1_1_32_20_5_0_0_2_2"

# Command 10
$DEEPBENCH_BIN_PATH/conv_bench-tencore train half 7 7 512 8 512 3 3 1 1 1 1
echo "Executed conv_bench-tencore: train_half_7_7_512_8_512_3_3_1_1_1_1"

# -----------------------------
# gemm_bench
# -----------------------------
echo "Starting gemm_bench commands..."

# Command 1
$DEEPBENCH_BIN_PATH/gemm_bench inference half 35 1500 2560 0 0
echo "Executed gemm_bench: inference_half_35_1500_2560_0_0"

# Command 2
$DEEPBENCH_BIN_PATH/gemm_bench inference half 6144 4 2048 0 0
echo "Executed gemm_bench: inference_half_6144_4_2048_0_0"

# Command 3
$DEEPBENCH_BIN_PATH/gemm_bench train half 1760 7000 1760 1 0
echo "Executed gemm_bench: train_half_1760_7000_1760_1_0"

# Command 4
$DEEPBENCH_BIN_PATH/gemm_bench train half 2048 64 2048 1 0
echo "Executed gemm_bench: train_half_2048_64_2048_1_0"

# Command 5
$DEEPBENCH_BIN_PATH/gemm_bench inference half 5124 1500 2048 0 0
echo "Executed gemm_bench: inference_half_5124_1500_2048_0_0"

# Command 6
$DEEPBENCH_BIN_PATH/gemm_bench inference half 7680 1 2560 0 0
echo "Executed gemm_bench: inference_half_7680_1_2560_0_0"

# Command 7
$DEEPBENCH_BIN_PATH/gemm_bench train half 1760 7133 1760 0 1
echo "Executed gemm_bench: train_half_1760_7133_1760_0_1"

# Command 8
$DEEPBENCH_BIN_PATH/gemm_bench inference half 512 3000 1536 0 0
echo "Executed gemm_bench: inference_half_512_3000_1536_0_0"

# Command 9
$DEEPBENCH_BIN_PATH/gemm_bench train half 1760 7000 1760 0 0
echo "Executed gemm_bench: train_half_1760_7000_1760_0_0"

# Command 10
$DEEPBENCH_BIN_PATH/gemm_bench train half 2048 128 2048 0 0
echo "Executed gemm_bench: train_half_2048_128_2048_0_0"

# -----------------------------
# gemm_bench-tencore
# -----------------------------
echo "Starting gemm_bench-tencore commands..."

# Command 1
$DEEPBENCH_BIN_PATH/gemm_bench-tencore inference half 35 1500 2560 0 0
echo "Executed gemm_bench-tencore: inference_half_35_1500_2560_0_0"

# Command 2
$DEEPBENCH_BIN_PATH/gemm_bench-tencore inference half 6144 4 2048 0 0
echo "Executed gemm_bench-tencore: inference_half_6144_4_2048_0_0"

# Command 3
$DEEPBENCH_BIN_PATH/gemm_bench-tencore train half 1760 7000 1760 1 0
echo "Executed gemm_bench-tencore: train_half_1760_7000_1760_1_0"

# Command 4
$DEEPBENCH_BIN_PATH/gemm_bench-tencore train half 2048 64 2048 1 0
echo "Executed gemm_bench-tencore: train_half_2048_64_2048_1_0"

# Command 5
$DEEPBENCH_BIN_PATH/gemm_bench-tencore inference half 5124 1500 2048 0 0
echo "Executed gemm_bench-tencore: inference_half_5124_1500_2048_0_0"

# Command 6
$DEEPBENCH_BIN_PATH/gemm_bench-tencore inference half 7680 1 2560 0 0
echo "Executed gemm_bench-tencore: inference_half_7680_1_2560_0_0"

# Command 7
$DEEPBENCH_BIN_PATH/gemm_bench-tencore train half 1760 7133 1760 0 1
echo "Executed gemm_bench-tencore: train_half_1760_7133_1760_0_1"

# Command 8
$DEEPBENCH_BIN_PATH/gemm_bench-tencore inference half 512 3000 1536 0 0
echo "Executed gemm_bench-tencore: inference_half_512_3000_1536_0_0"

# Command 9
$DEEPBENCH_BIN_PATH/gemm_bench-tencore train half 1760 7000 1760 0 0
echo "Executed gemm_bench-tencore: train_half_1760_7000_1760_0_0"

# Command 10
$DEEPBENCH_BIN_PATH/gemm_bench-tencore train half 2048 128 2048 0 0
echo "Executed gemm_bench-tencore: train_half_2048_128_2048_0_0"

# -----------------------------
# rnn_bench
# -----------------------------
echo "Starting rnn_bench commands..."

# Command 1
$DEEPBENCH_BIN_PATH/rnn_bench inference half 1024 1 25 lstm
echo "Executed rnn_bench: inference_half_1024_1_25_lstm"

# Command 2
$DEEPBENCH_BIN_PATH/rnn_bench inference half 256 4 150 lstm
echo "Executed rnn_bench: inference_half_256_4_150_lstm"

# Command 3
$DEEPBENCH_BIN_PATH/rnn_bench inference half 512 2 1 gru
echo "Executed rnn_bench: inference_half_512_2_1_gru"

# Command 4
$DEEPBENCH_BIN_PATH/rnn_bench train half 128 32 15 lstm
echo "Executed rnn_bench: train_half_128_32_15_lstm"

# Command 5
$DEEPBENCH_BIN_PATH/rnn_bench train half 128 64 15 lstm
echo "Executed rnn_bench: train_half_128_64_15_lstm"

# Command 6
$DEEPBENCH_BIN_PATH/rnn_bench inference half 1536 1 50 lstm
echo "Executed rnn_bench: inference_half_1536_1_50_lstm"

# Command 7
$DEEPBENCH_BIN_PATH/rnn_bench inference half 512 1 1 gru
echo "Executed rnn_bench: inference_half_512_1_1_gru"

# Command 8
$DEEPBENCH_BIN_PATH/rnn_bench inference half 512 2 25 lstm
echo "Executed rnn_bench: inference_half_512_2_25_lstm"

# Command 9
$DEEPBENCH_BIN_PATH/rnn_bench train half 128 32 1 gru
echo "Executed rnn_bench: train_half_128_32_1_gru"

# Command 10
$DEEPBENCH_BIN_PATH/rnn_bench train half 128 64 1 gru
echo "Executed rnn_bench: train_half_128_64_1_gru"

# Command 11
$DEEPBENCH_BIN_PATH/rnn_bench inference half 1536 1 750 gru
echo "Executed rnn_bench: inference_half_1536_1_750_gru"

# Command 12
$DEEPBENCH_BIN_PATH/rnn_bench inference half 512 1 25 lstm
echo "Executed rnn_bench: inference_half_512_1_25_lstm"

# Command 13
$DEEPBENCH_BIN_PATH/rnn_bench inference half 512 4 1 gru
echo "Executed rnn_bench: inference_half_512_4_1_gru"

# Command 14
$DEEPBENCH_BIN_PATH/rnn_bench train half 128 32 1 lstm
echo "Executed rnn_bench: train_half_128_32_1_lstm"

# -----------------------------
# rnn_bench-tencore
# -----------------------------
echo "Starting rnn_bench-tencore commands..."

# Command 1
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 1024 1 25 lstm #
echo "Executed rnn_bench-tencore: inference_half_1024_1_25_lstm"

# Command 2
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 256 4 150 lstm  #
echo "Executed rnn_bench-tencore: inference_half_256_4_150_lstm"

# Command 3
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 512 2 25 lstm #
echo "Executed rnn_bench-tencore: inference_half_512_2_25_lstm"

# Command 4
$DEEPBENCH_BIN_PATH/rnn_bench-tencore train half 128 32 1 lstm
echo "Executed rnn_bench-tencore: train_half_128_32_1_lstm"

# Command 5
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 1536 1 50 lstm # 
echo "Executed rnn_bench-tencore: inference_half_1536_1_50_lstm"

# Command 6
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 512 1 1 gru #
echo "Executed rnn_bench-tencore: inference_half_512_1_1_gru"

# Command 7
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 512 4 1 gru #
echo "Executed rnn_bench-tencore: inference_half_512_4_1_gru"

# Command 8
$DEEPBENCH_BIN_PATH/rnn_bench-tencore train half 128 64 15 lstm #
echo "Executed rnn_bench-tencore: train_half_128_64_15_lstm"

# Command 9
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 1536 1 750 gru #
echo "Executed rnn_bench-tencore: inference_half_1536_1_750_gru"

# Command 10
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 512 1 25 lstm # 
echo "Executed rnn_bench-tencore: inference_half_512_1_25_lstm"

# Command 11
$DEEPBENCH_BIN_PATH/rnn_bench-tencore train half 128 32 15 lstm #
echo "Executed rnn_bench-tencore: train_half_128_32_15_lstm"

# Command 12
$DEEPBENCH_BIN_PATH/rnn_bench-tencore train half 128 64 1 gru #
echo "Executed rnn_bench-tencore: train_half_128_64_1_gru"

# Command 13
$DEEPBENCH_BIN_PATH/rnn_bench-tencore train half 128 32 1 gru #
echo "Executed rnn_bench-tencore: train_half_128_32_1_gru"

# Command 14
$DEEPBENCH_BIN_PATH/rnn_bench-tencore train half 128 32 1 lstm #
echo "Executed rnn_bench-tencore: train_half_128_32_1_lstm"

# Command 15
$DEEPBENCH_BIN_PATH/rnn_bench-tencore train half 128 64 1 gru
echo "Executed rnn_bench-tencore: train_half_128_64_1_gru"

# Command 16
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 256 1 150 lstm
echo "Executed rnn_bench-tencore: inference_half_256_1_150_lstm"

# Command 17
$DEEPBENCH_BIN_PATH/rnn_bench-tencore inference half 512 2 1 gru # 
echo "Executed rnn_bench-tencore: inference_half_512_2_1_gru"

# -----------------------------
# Completion Message
# -----------------------------
echo "All DeepBench commands have been executed successfully."

# ================================
