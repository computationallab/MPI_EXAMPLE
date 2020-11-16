#!/usr/bin/env bash

module load gnu8 openmpi3

mpicc -o pi mpi_pi.c

