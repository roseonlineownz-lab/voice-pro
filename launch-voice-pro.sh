#!/bin/bash
# Voice-Pro Startup Script

# Define colors
GREEN='[0;32m'
BLUE='[0;34m'
NC='[0m' # No Color

echo -e "${BLUE}Starting Voice-Pro...${NC}"

# Set environment variables for GPU
export CUDA_VISIBLE_DEVICES=0
export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:128

# Get the directory where this script is located
SCRIPT_DIR=$(cd "$(dirname "${BASH_SOURCE[0]}")" &> /dev/null && pwd)

# Activate conda environment
echo -e "${BLUE}Activating conda environment...${NC}"
source $SCRIPT_DIR/installer_files/conda/bin/activate $SCRIPT_DIR/installer_files/env

# Change to the Voice-Pro directory
cd $SCRIPT_DIR

# Run Voice-Pro with GPU support
echo -e "${GREEN}Launching Voice-Pro interface...${NC}"
python3 start-voice.py

echo -e "${GREEN}Voice-Pro has exited.${NC}"
