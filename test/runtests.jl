using BasisChange
using LinearAlgebra
using Test

δ(x,y) = (x == y ? 1. : 0.)   

@testset "BasisChange.jl" begin
    @testset "Proper Transformation" begin
        for N in 3:2:11 # even dimensions require minuses to keep handedness
            B = I
            for i in 1:N # couldn't be bothered to figure the formula out
                B′ = [δ(j-1, (N + k - i)% N) for (k, j) in Iterators.product(1:N,1:N)]
                R = rotation_matrix(B,B′)
                Δ = det(R)
                @test abs(Δ) ≈ 1. atol = 1e-15 
                @test sign(Δ) == 1 
            end
        end
    end
end
