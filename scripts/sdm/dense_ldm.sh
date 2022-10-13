#!/bin/bash
#SBATCH --job-name=dense_ldm
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --ntasks-per-node=2
#SBATCH --gpus-per-node=2
#SBATCH --gpus=2
#SBATCH -t 3-0:59:59
#SBATCH --cpus-per-task=18
#SBATCH -o dense_ldm.out

source /home/sliu/miniconda3/etc/profile.d/conda.sh
source activate ldm

python main.py --base configs/latent-diffusion/celebahq-ldm-vq-4-mask.yaml -t --gpus 0,1

source deactivate