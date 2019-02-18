using Test
using Canary

@testset "1-D Metric terms" begin
  for T ∈ (Float32, Float64)
    let
      N = 4
      r, w = lglpoints(T, N)
      D = spectralderivative(r)
    end
  end
end
