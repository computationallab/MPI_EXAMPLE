#!/usr/bin/env bash
#SBATCH -J demo
#SBATCH -o demo.stdout
#SBATCH -e demo.stderr
#SBATCH --mail-user UCID@njit.edu
#SBATCH --mail-type=ALL
#SBATCH -p gor
#SBATCH  --mem-per-cpu=1G
#SBATCH --nodes=1
#SBATCH --tasks-per-node=8


module load gnu8 openmpi3

mpirun -np ${SLURM_NTASKS} ./pi

