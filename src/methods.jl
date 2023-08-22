"""
    pump!(self::StateVector, pulse::PerturbEvol) -> StateVector

Transform the state of a quantum system according to system's evolution in
a presence of the laser pulse.

# Arguments
* `self` :
    The current state vector of a quantum system.
* `pulse` :
    The laser pulse which is applied on the quantum system.

# Returns
* `StateVector` :
    Composite type instance with transformed `state` object.

# See also
* RabiRamseySpectroscopy.StateVector
* RabiRamseySpectroscopy.PerturbEvol

# References
* Wikipedia: https://en.wikipedia.org/wiki/Ramsey_interferometry
"""
function pump!(self::StateVector, pulse::PerturbEvol)
    local Ψ⃗ = self.state
    local Ŵ = pulse.operator
    self.state = Ŵ * Ψ⃗
    return self
end
"""
    pump(state_vector::StateVector, pulse::PerturbEvol) -> StateVector

Transform the state of a quantum system according to system's evolution in
a presence of the laser pulse.

# Arguments
* `state_vector` :
    The current state vector of a quantum system.
* `pulse` :
    The laser pulse which is applied on the quantum system.

# Returns
* `StateVector` :
    Composite type instance with transformed `state` object.

# See also
* RabiRamseySpectroscopy.StateVector
* RabiRamseySpectroscopy.PerturbEvol

# References
* Wikipedia: https://en.wikipedia.org/wiki/Ramsey_interferometry
"""
function pump(state_vector::StateVector, pulse::PerturbEvol)
    local Ψ⃗ = state_vector.state
    local Ŵ = pulse.operator
    return StateVector(Ŵ * Ψ⃗)
end


"""
    rest!(self::StateVector, duration::FreeEvol) -> StateVector

Transform the state of a quantum system according to system's evolution in
a presence of no perturbations.

# Arguments
* `self` :
    The current state vector of a quantum system.
* `duration` :
    The time of free evolution of the quantum system.

# Returns
* `StateVector` :
    Composite type instance with transformed `state` object.

# See also
* RabiRamseySpectroscopy.StateVector
* RabiRamseySpectroscopy.FreeEvol

# References
* Wikipedia: https://en.wikipedia.org/wiki/Ramsey_interferometry
"""
function rest!(self::StateVector, duration::FreeEvol)
    local Ψ⃗ = self.state
    local V̂ = duration.operator
    self.state = V̂ * Ψ⃗
    return self
end
"""
    rest(state_vector::StateVector, duration::FreeEvol) -> StateVector

Transform the state of a quantum system according to system's evolution in
a presence of no perturbations.

# Arguments
* `state_vector` :
    The current state vector of a quantum system.
* `duration` :
    The time of free evolution of the quantum system.

# Returns
* `StateVector` :
    Composite type instance with transformed `state` object.

# See also
* RabiRamseySpectroscopy.StateVector
* RabiRamseySpectroscopy.FreeEvol

# References
* Wikipedia: https://en.wikipedia.org/wiki/Ramsey_interferometry
"""
function rest(state_vector::StateVector, duration::FreeEvol)
    local Ψ⃗ = state_vector.state
    local V̂ = duration.operator
    return StateVector(V̂ * Ψ⃗)
end


"""
    probe(state_vector::StateVector) -> Real

Method that computes the value of probability `nₑ` for a quantum system to be in
excited state and can be interpret as population of excited state.

# Arguments
* `self` :
    The current state vector of a quantum system.

# Returns
* `nₑ` :
    Real number.

# See also
* RabiRamseySpectroscopy.StateVector

# References
* Wikipedia: https://en.wikipedia.org/wiki/Ramsey_interferometry
"""
function probe(state_vector::StateVector)::Real
    local Ψ⃗ = state_vector.state
    return abs2(Ψ⃗[1])
end
