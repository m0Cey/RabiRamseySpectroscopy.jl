# RamseySpectroscopyCore.jl

(This section is WIP)

RamseySpectroscopyCore.jl provides core toolset for simulating Rabi/Ramsey spectroscopy experiments.
The main goal is to have ready-to-use, simple-to-understand modeling toolkit with experimenters in mind.
Furthermore, it can be used as introduction to spectroscopy for people with little physics background or
students.

## Installation

To install RamseySpectroscopyCore.jl, use the Julia package manager:

```julia
julia> using Pkg
julia> Pkg.add("RamseySpectroscopyCore")
```

## Example

(This section is WIP)

Lets start by creating our experement setup:

1. Gas cell or a single atom - research object;

2. Tunable laser - research instrument.

```julia
julia> using RabiRamseySpectroscopy
julia> atom = StateVector(0, 1)
julia> laser = PerturbEvol(0, 3.14, 1)
```

Now we want to pump our atom with a laser to excited energy level:

```julia
julia> pump!(atom, laser)
```

After that, atom needs to be probed with a second laser pulse to check a populaton of the excited
state (or how many atoms in a gas cell are excited).

```julia
julia> probe(atom)
0.9999
```
We'll get some value approximately close to 1, which means that laser frequency is resonant with
transition frequency of an atom. 

Congrats, you performed your first spectroscopy experement in Julia!

## Development

(This section is WIP)

If you want to help develop this package, you can do it via GitHub default instruments(pull requests,
issues etc.) and/or contact me: sciencefloppa@gmail.com. In additon, it is highly recommended to read or
modify code of RamseySpectroscopyCore.jl with JuliaMono font installed. That way UTF-8 symbols will be
displayed correctly.
