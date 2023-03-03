#!/bin/bash
#SBATCH -A m1411_g
#SBATCH -C gpu
#SBATCH -q regular
#SBATCH -t 12:00:00
#SBATCH -n 1
#SBATCH --ntasks-per-node=1
#SBATCH -c 10
#SBATCH --gpus-per-task=1
#SBATCH --mail-user=mzweig@berkeley.edu
#SBATCH --mail-type=ALL

export SLURM_CPU_BIND="cores"
source ~/.bashrc
conda activate neus
#python exp_runner.py --mode train --conf ./confs/wmask.conf --case sphere_in_room_preprocessed
python exp_runner.py --mode train --conf ./confs/wmask.conf --case thin_catbus