#! /bin/bash

#SBATCH --job-name=job
#SBATCH --time=120:00:00
#SBATCH --account=co_rllab
#SBATCH --qos=rail_gpu4_normal
#SBATCH --partition=savio4_gpu
#SBATCH --cpus-per-task=4
#SBATCH --mem=64G
#SBATCH --gres=gpu:A5000:8
#SBATCH --output=output.log
#SBATCH --error=error.log

export TMPDIR="/global/scratch/users/alishbaimran/tmp/"
export NCCL_P2P_DISABLE=1
python /global/scratch/users/alishbaimran/tmp/ImageNet/main.py /global/scratch/users/alishbaimran/tmp/ilsvrc_2024-01-04_1601/ -a resnet101 --lr 0.01 
