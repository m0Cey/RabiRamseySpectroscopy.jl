"""
RamseySpectroscopyCore.jl provides core toolset for simulating Rabi/Ramsey spectroscopy
experiments. It consists of controling functions `pump()`, `rest()` and an interrogating
function `probe()`.
"""
module RamseySpectroscopyCore


export StateVector, PerturbEvol, FreeEvol
include("structs.jl")

export pump, pump!, rest, rest!, probe
include("methods.jl")


end
