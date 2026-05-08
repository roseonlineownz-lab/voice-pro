
#!/bin/bash
export CUDA_VISIBLE_DEVICES=0
export PYTORCH_CUDA_ALLOC_CONF=max_split_size_mb:128

# Activate conda environment
source installer_files/conda/bin/activate installer_files/env

# Run Voice-Pro with GPU
python3 src/voice_pro_main.py --gpu --models-dir models/
