"""
    StateVector

Struct that describes a state of the quantum two-level system via ket vector
in Dirac notation.

# Fields
* `state` :
    Vector that represents the state of the system in (|e>, |g>) basis.

# Arguments
* `e` :
    Numerical value that implies the probability of a quantum system to be in excited state
    or the amount of particles in the ground state.
    Value of |e> ket vector.
* `g` :
    Numerical value that implies the probability of a quantum system to be in ground state
    or the amount of particles in the ground state.
    Value of |g> ket vector.

# Returns
* `StateVector` :
    Composite type instance.

# References
* Wikipedia: https://en.wikipedia.org/wiki/Two-state_quantum_system
* Wikipedia: https://en.wikipedia.org/wiki/Bra%E2%80%93ket_notation
"""
mutable struct StateVector
    state::Vector{ComplexF64}
    function StateVector(e::Number = 0, g::Number = 1)
        norm::Number = hypot(e, g)
        return new(complex([e/norm, g/norm]))
    end
    function StateVector(state::Vector{T} where T<:Number)
        return new(state)
    end
end


"""
    PerturbEvol

Struct for a quantum physics operator that describes evolution of quantum two-level system
in a presence of some perturbation field.

# Fields
* `operator`:
    Represents operator itself in a form of a matrix.

# Arguments
* `δ` :
    The `detuning`, a measure of how far the perturbation field oscillation frequency is
    off-resonance relative to the transition
    (Hz).
* `τ` :
    The `duration` of Rabi/Ramsey pulse
    (s).
* `Ω₀` :
    The `Rabi frequency` at which the probability amplitudes of two energy levels fluctuate
    in an oscillating perturbation field
    (Hz).

# Returns
* `PerturbEvol` :
    Composite type instance.

# See also
* [`StateVector`](@ref)

# References
* Wikipedia: https://en.wikipedia.org/wiki/Two-state_quantum_system
* Wikipedia: https://en.wikipedia.org/wiki/Rabi_frequency
"""
struct PerturbEvol
    operator::Matrix{ComplexF64}
    function PerturbEvol(δ::Real, τ::Real, Ω₀::Real)
        Ω = hypot(δ, Ω₀)
        Ŵ = [
            cos(0.5*Ω*τ) + 1im*(δ/Ω)*sin(0.5*Ω*τ)    1im*(Ω₀/Ω)*sin(0.5*Ω*τ);
            1im*(Ω₀/Ω)*sin(0.5*Ω*τ)    cos(0.5*Ω*τ) - 1im*(δ/Ω)*sin(0.5*Ω*τ)
        ]
        return new(Ŵ)
    end
end


"""
    FreeEvol

Struct for a quantum physics operator that describes evolution of unperturbed
quantum two-level system. This evolution can be described in the way of changing
phase difference between `|e>` and `|g>` states.

# Fields
* `operator`:
    Represents operator itself in a form of a matrix.

# Arguments
* `x` :
    The `phase difference` between `|e>` and `|g>` states
    as a result of free evolution.

# Returns
* `FreeEvol` :
    Composite type instance.

# See also
* [`StateVector`](@ref)

# References
* Wikipedia: https://en.wikipedia.org/wiki/Two-state_quantum_system
"""
struct FreeEvol
    operator::Matrix{ComplexF64}
    function FreeEvol(x::Real)
        V̂ = [
            exp(1im*x) 0;
            0          1
        ]
        return new(V̂)
    end
end
