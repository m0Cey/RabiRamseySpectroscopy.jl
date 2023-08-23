using RamseySpectroscopyCore
using Test

@testset "RamseySpectroscopyCore.jl" begin
    @test rest!(StateVector(0, 1), FreeEvol(0)).state == [0; 1]
    @test rest(StateVector(0, 1), FreeEvol(0)).state == [0; 1]
    @test pump!(StateVector(0, 1), PerturbEvol(0, 0, 1)).state == [0; 1]
    @test pump(StateVector(0, 1), PerturbEvol(0, 0, 1)).state == [0; 1]
    @test probe(StateVector(rand(), rand())) ≤ 1
    @test probe(StateVector(rand(ComplexF64), rand(ComplexF64))) ≤ 1
    @test probe(StateVector(rand(Complex{Int}), rand(Complex{Int}))) ≤ 1
end
