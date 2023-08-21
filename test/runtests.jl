using RabiRamseySpectroscopy
using Test

@testset "RabiRamseySpectroscopy.jl" begin
    @test FreeEvol(0).operator == [1 0; 0 1]
    @test probe(StateVector(rand(), rand())) ≤ 1
    @test probe(StateVector(rand(Int), rand(Int))) ≤ 1
end
