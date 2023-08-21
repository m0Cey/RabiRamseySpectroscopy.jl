using RabiRamseySpectroscopy
using Test

@testset "RabiRamseySpectroscopy.jl" begin
    @test wait!(StateVector(0, 1), FreeEvol(0)).state == [0; 1]
    @test probe(StateVector(rand(), rand())) ≤ 1
    @test probe(StateVector(rand(Int), rand(Int))) ≤ 1
end
