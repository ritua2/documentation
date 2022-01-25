#!/bin/bash

fluentMeshToFoam mesh.msh
decomposePar
mpirun -np 40 rhoPimpleFoam -parallel
reconstructPar
foamToVTK

