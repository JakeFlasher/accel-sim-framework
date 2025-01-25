#!/bin/bash

# ================================
# Script: count_deepbench_kernels.sh
# Description: Counts the total number of kernels executed across all DeepBench applications,
#              determines the total number of applications, and calculates the average number of kernels per application.
# ================================

# ======== Configuration ========

# Set the path to the DeepBench 11.0 directory
# Replace "/path/to/deepbench/11.0" with the actual path on your system
DEEPBENCH_DIR="./"

# ===============================

# ====== Initialize Counters ======
total_kernels=0
total_apps=0

# ====== Function to Print Banner ======
print_banner() {
  echo "==========================================="
  echo "DeepBench Kernel Execution Counter Script"
  echo "==========================================="
  echo
}

# ====== Function to Check Directory ======
check_directory() {
  if [ ! -d "$1" ]; then
    echo "Error: Directory '$1' does not exist."
    exit 1
  fi
}

# ====== Function to Count Kernels ======
count_kernels() {
  local app_dir="$1"
  # Find all .traceg files in the application directory
  # Assuming one .traceg file per kernel
  local kernel_count
  kernel_count=$(find "$app_dir" -maxdepth 5 -type f -name "*.traceg" | wc -l)
  echo "$kernel_count"
}

# ====== Start of Script ======

print_banner

# Check if DEEPBENCH_DIR exists
check_directory "$DEEPBENCH_DIR"

echo "DeepBench Directory: $DEEPBENCH_DIR"
echo

# Find all application directories containing run.sh
# Directory structure assumed: DEEPBENCH_DIR/BENCHMARK/APPLICATION/run.sh
echo "Searching for application directories containing run.sh..."

application_dirs=$(find "$DEEPBENCH_DIR" -type f -name "run.sh" -exec dirname {} \;)

echo "Total Applications Found: $(echo "$application_dirs" | wc -l)"
echo

# Iterate over each application directory
for app_dir in $application_dirs; do
  # Double-check if directory exists (redundant but safe)
  if [ ! -d "$app_dir" ]; then
    echo "Warning: Application directory '$app_dir' does not exist. Skipping."
    continue
  fi

  # Increment total applications
  total_apps=$((total_apps + 1))

  # Count kernels in the current application directory
  num_kernels=$(count_kernels "$app_dir")

  # Add to total kernels
  total_kernels=$((total_kernels + num_kernels))

  # Optional: Print per-application counts
  # Uncomment the line below if you wish to see counts per application
  # echo "Application: $(basename "$app_dir") - Kernels: $num_kernels"

done

# Calculate average kernels per application
if [ "$total_apps" -eq 0 ]; then
  echo "Error: No applications found. Cannot compute average kernels per application."
  exit 1
fi

# Using awk for floating point division
average_kernels=$(awk "BEGIN {printf \"%.2f\", $total_kernels / $total_apps}")

# ====== Output the Results ======
echo "==========================================="
echo "Summary of DeepBench Kernel Executions:"
echo "==========================================="
echo "Total Kernels Executed      : $total_kernels"
echo "Total Applications Processed: $total_apps"
echo "Average Kernels per Application: $average_kernels"
echo "==========================================="
