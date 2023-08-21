using RabiRamseySpectroscopy
using Test

@testset "RabiRamseySpectroscopy.jl" begin
    @test probe(StateVector(rand(), rand())) ≤ 1
    @test probe(StateVector(rand(Int), rand(Int))) ≤ 1
end
