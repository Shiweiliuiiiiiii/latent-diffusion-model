#!/bin/bash
#SBATCH --job-name=sparse_ldm_0.5
#SBATCH -p gpu
#SBATCH -N 1
#SBATCH --ntasks-per-node=2
#SBATCH --gpus-per-node=2
#SBATCH --gpus=2
#SBATCH -t 3-0:59:59
#SBATCH --exclusive
#SBATCH --cpus-per-task=18
#SBATCH -o sparse_ldm_0.5.out

source /home/sliu/miniconda3/etc/profile.d/conda.sh
source activate ldm

python main.py --base configs/latent-diffusion/celebahq-ldm-vq-4-mask.yaml -t --gpus 0,1

source deactivate