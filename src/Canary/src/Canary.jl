module Canary

# We seem to be getting error messages from precompiling since depending on
# MPI.jl.  So we are going to turn it off for now.
#
# The long term solution may be to have an abstract MPI interface so that
# Canary doesn't have to depend directly on the MPI package.
# __precompile__(false)

using Operators
using Metric
using Mesh

export brickmesh, centroidtocode, partition, connectmesh, mappings
export lglpoints, lgpoints
export baryweights, spectralderivative, interpolationmatrix
export creategrid!, computemetric!
export creategrid1d, creategrid2d, creategrid3d, computemetric, creategrid

end # module
