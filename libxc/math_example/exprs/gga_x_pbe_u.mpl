
Polarization := "unpol":
Digits := 20:             (* constants will have 20 digits *)
interface(warnlevel=0):   (* supress all warnings          *)
with(CodeGeneration):

$include <gga_x_pbe.mpl>:


dens := (r0, r1) -> r0:
zeta := (r0, r1) -> 0:
xs0  := (r0, r1, sigma0, sigma2) -> sqrt(sigma0/4)/((r0/2)^(1 + 1/DIMENSIONS)):
xs1  := (r0, r1, sigma0, sigma2) -> sqrt(sigma0/4)/((r0/2)^(1 + 1/DIMENSIONS)):
xt   := (r0, r1, sigma0, sigma1, sigma2) -> sqrt(sigma0)/r0^(1 + 1/DIMENSIONS):

dmfd10000 := (v0, v1, v2, v3, v4) ->  eval(diff(mf(v0, v1, v2, v3, v4), v0)):

# zk is energy per unit particle
mzk  := (r0, r1, s0, s1, s2) -> \
   \
    f(r_ws(dens(r0, r1)), zeta(r0, r1), xt(r0, r1, s0, s1, s2), xs0(r0, r1, s0, s2), xs1(r0, r1, s0, s2)) \
  :

(* mf is energy per unit volume *)
mf   := (r0, r1, s0, s1, s2) -> eval(dens(r0, r1)*mzk(r0, r1, s0, s1, s2)):


$include <util.mpl>

zk_0_ = mzk(rho_0_, rho_1_, sigma_0_, sigma_1_, sigma_2_):

print(mzk(rho_a, rho_b, sigma_aa, sigma_ab, sigma_bb)):
