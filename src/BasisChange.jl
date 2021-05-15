module BasisChange

export rotation_matrix

using LinearAlgebra

rotation_matrix(B, B′) = B*transpose(B′)

end
 