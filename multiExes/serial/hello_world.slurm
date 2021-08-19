#!/bin/bash
#SBATCH -J hello_world_cm
#SBATCH -o hello_world.txt
#SBATCH -p compute1
#SBATCH -t 00:02:00
#SBATCH -N 1
#SBATCH -n 5

./hello_world 1 &
./hello_world 2 &
./hello_world 3 &
./hello_world 4 &
./hello_world 5  #executable corresponds to code in Listing 30
