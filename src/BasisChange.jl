module BasisChange

using StaticArrays
using LinearAlgebra

tr(m) = transpose(m)

e₁ = SVector(1., 0. ,0.)
e₂ = SVector(0., 1. ,0.)
e₃ = SVector(0., 0. ,1.)

I = [tr(e₁); tr(e₂); tr(e₃)]

function M(e₁′, e₃′)
    @assert iszero(e₁′ ⋅ e₃′) "The input vectors are not orthogonal!"
    v₁ᵀ = tr(e₁′)
    v₃ᵀ = tr(e₃′)

    v₂ᵀ = tr(e₃′ × e₁′)

    A = [v₁ᵀ; v₂ᵀ; v₃ᵀ]
    b₁ = I*e₁
    b₂ = I*e₂
    b₃ = I*e₃

    return [tr(A\(b₁));
            tr(A\(b₂));
            tr(A\(b₃));]
end

end
