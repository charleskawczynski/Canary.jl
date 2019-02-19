module RKCoefficients

# Fourth-order, low-storage, Runge–Kutta scheme of Carpenter and Kennedy
# (1994) ((5,4) 2N-Storage RK scheme.
#
# Ref:
# @TECHREPORT{CarpenterKennedy1994,
#   author = {M.~H. Carpenter and C.~A. Kennedy},
#   title = {Fourth-order {2N-storage} {Runge-Kutta} schemes},
#   institution = {National Aeronautics and Space Administration},
#   year = {1994},
#   number = {NASA TM-109112},
#   address = {Langley Research Center, Hampton, VA},
# }

function get_coefficients(DFloat::R) where R
  RKA = (DFloat(0),
         DFloat(-567301805773)  / DFloat(1357537059087),
         DFloat(-2404267990393) / DFloat(2016746695238),
         DFloat(-3550918686646) / DFloat(2091501179385),
         DFloat(-1275806237668) / DFloat(842570457699 ))

  RKB = (DFloat(1432997174477) / DFloat(9575080441755 ),
         DFloat(5161836677717) / DFloat(13612068292357),
         DFloat(1720146321549) / DFloat(2090206949498 ),
         DFloat(3134564353537) / DFloat(4481467310338 ),
         DFloat(2277821191437) / DFloat(14882151754819))

  RKC = (DFloat(0),
         DFloat(1432997174477) / DFloat(9575080441755),
         DFloat(2526269341429) / DFloat(6820363962896),
         DFloat(2006345519317) / DFloat(3224310063776),
         DFloat(2802321613138) / DFloat(2924317926251))
end

end